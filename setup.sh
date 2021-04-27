#!/bin/sh
git config --global credential.helper "/bin/bash /git_creds1.sh"

echo '#!/bin/bash' > /git_creds1.sh
echo "sleep 1" >> /git_creds1.sh
echo "echo username=$SOURCE_GIT_USER" >> /git_creds1.sh
echo "echo password=$SOURCE_GIT_PASSWORD" >> /git_creds1.sh


git config --global credential.helper "/bin/bash /git_creds2.sh"

echo '#!/bin/bash' > /git_creds2.sh
echo "sleep 1" >> /git_creds2.sh
echo "echo username=$DESTINATION_GIT_USER" >> /git_creds2.sh
echo "echo password=$DESTINATION_GIT_PASSWORD" >> /git_creds2.sh

cd /git-mirror/
./initial_mirror.sh $SOURCE_REPO $DESTINATION_REPO

crond -f -d 8
