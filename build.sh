#!/usr/bin/env bash
#deploy="false"
deploy="true"
image=speedtest-cli
version=2.1.1
latest=true

#OPTIONS="--no-cache --force-rm"
#OPTIONS="--no-cache"
#OPTIONS="--force-rm"
OPTIONS=""

docker build ${OPTIONS} -t ivonet/${image}:${version} .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push ivonet/${image}:${version}
    if [ "$latest" == "true" ]; then
        docker tag ivonet/${image}:${version} ivonet/${image}:latest
        docker push ivonet/${image}:latest
    fi
fi