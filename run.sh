#!/bin/bash
export DOCKER_REPO='docker.io'
export DOCKER_USER='user'
export DOCKERHUB_PASSWORD='password('
export DOCKERHUB_EMAIL='email'
export APP1='tomcat'
export APP2='httpd'
export APP3='nginx'
set -ex

cd ansible
if [ "$1" != "" ]
then
    ansible-playbook -i hosts deploy.yml --tags $1
else
    echo "Select a tag"
    ansible-playbook deploy.yml --list-tags
fi