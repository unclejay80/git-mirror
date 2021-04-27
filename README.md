# Git mirror

Docker image which allows you easily to mirror an existing Git repository to another Git repository.

Sync is triggered using a cron job each hour.

## Enviroment variables

`SOURCE_REPO` Git repository source url
`SOURCE_GIT_USER` Git username source
`SOURCE_GIT_PASSWORD` Git password source
`DESTINATION_REPO` Git repository destination url
`DESTINATION_GIT_USER` Git username destination
`DESTINATION_GIT_PASSWORD` Git password destination
