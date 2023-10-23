#!/usr/bin/env bash

for id in $(docker ps -q)
do
    if [[ $(docker name "${id}") == *"${1}"* ]]; then
        echo "stopping container ${id}"
        docker stop "${id}"
    fi
done
