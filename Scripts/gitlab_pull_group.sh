#!/usr/bin/env bash

#BASE_PATH="https://10.129.103.51:2222/"
BASE_PATH="https://git.garena.com/"

GITLAB_PRIVATE_TOKEN=txK-ocsUVBEDsSYGuQSi

if [ -z "$1" ]
  then
    echo "group name is required."
    exit 1;
fi

GROUP_NAME="$1"

if [ -z "$GITLAB_PRIVATE_TOKEN" ]; then
    echo "Please set the environment variable GITLAB_PRIVATE_TOKEN"
    echo "See ${BASE_PATH}profile/account"
    exit 1
fi

FIELD_NAME="ssh_url_to_repo"

echo "Pull all git projects in group $GROUP_NAME";

REPO_SSH_URLS=`curl -s "${BASE_PATH}api/v4/groups/$GROUP_NAME/projects?private_token=$GITLAB_PRIVATE_TOKEN&per_page=999" \
   | grep -o "\"$FIELD_NAME\":[^ ,]\+" | awk -F'"' '{print $4}' | grep $GROUP_NAME`

for REPO_SSH_URL in $REPO_SSH_URLS; do
    THEPATH=$(echo "$REPO_SSH_URL" | awk -F'/' '{print $NF}' | awk -F'.' '{print $1}')

#    if [ ! -d "$THEPATH" ]; then
#        echo "Cloning $THEPATH ( $REPO_SSH_URL )"
        #git clone "$REPO_SSH_URL" --quiet &
#    else
    echo "Pulling $THEPATH ..."
    (cd "$THEPATH" && git pull && cd ..) &
    wait $!
#    fi
done

echo "Done!"
