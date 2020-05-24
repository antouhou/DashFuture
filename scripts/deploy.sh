#!/usr/bin/env bash

SSH_CREDENTIALS=$1
REMOTE_DESTINATION=$2
IMAGE_NAME="telegrambot"
[[ -z "$1" ]] && { echo "Parameter 1 should be ssh credentials, i.e. user@host.com" ; exit 1; }
[[ -z "$2" ]] && { echo "Parameter 2 should be folder to copy to, i.e. /home/user/nginx/ will result in copying conf.d dir over there" ; exit 1; }

scp -r ../static/* ${SSH_CREDENTIALS}:${REMOTE_DESTINATION}

echo "Deploy finished"