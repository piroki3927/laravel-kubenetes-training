#!/bin/sh

# 変数
repository_name="piroki3927/laravel-kubernetes"

echo "Start deploy to docker hub"

echo $repository_name
echo $1

# Returns boolean indicates whether designated tagged-image exists.
# arg1: tag name
function image_exists() {
    image=$(docker image ls -a | grep $repository_name)

    if [ "$image" ]; then
        return 0
    else
        return 1
    fi
}

if image_exists; then
    docker build . -t $repository_name:$1
    docker push $repository_name:$1
    echo "Done.\n"
else
    echo "Error.\n"
fi
