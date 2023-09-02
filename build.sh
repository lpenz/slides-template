#!/bin/bash

set -e -x

docker run --rm -v "${PWD}:/data" --user "$(id -u):$(id -g)" "${USER}/${PWD##*/}" \
    -t revealjs \
    --standalone \
    --metadata=title=slides-template \
    -o index.html \
    README.md
