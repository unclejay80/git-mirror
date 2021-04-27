FROM alpine:3.13

ENV SOURCE_REPO ""
ENV DESTINATION_REPO ""
ENV SOURCE_GIT_USER ""
ENV SOURCE_GIT_PASSWORD ""
ENV DESTINATION_GIT_USER ""
ENV DESTINATION_GIT_PASSWORD ""

RUN apk add --no-cache bash
RUN apk update
RUN apk add git

RUN mkdir /git-mirror/

COPY config/cronjobs /etc/crontabs/root

ADD initial_mirror.sh /git-mirror/
ADD update_mirror.sh /git-mirror/
ADD setup.sh /

RUN chmod +x /setup.sh

# start crond with log level 8 in foreground, output to stderr
CMD ["/setup.sh"]
