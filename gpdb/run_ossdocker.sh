#!/bin/bash
# Including configurations
. config.sh

export BUILD_ENV="test"
export VOLUME=`pwd`

docker run  -it --hostname=gpdbsne \
    --name gpdb6oss \
    --publish 5432:5432 \
    --publish 99:22 \
    --volume ${VOLUME}:/code \
    ${DOCKER_OSS_TAG} bin/bash
