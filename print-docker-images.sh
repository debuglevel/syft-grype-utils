#!/bin/bash

# Print each local docker image

echoerr() { echo "$@" 1>&2; }

echoerr "Getting local docker images"
#docker image list --format "{{.ID}}\t{{.Repository}}\t{{.Tag}}"
docker image list --format "{{.ID}}"


