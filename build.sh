#!/bin/bash

input=README.md
output=index.html
title=slide-template

usage="$0 [-i input.md] [-o output.html] [-t title]"

while getopts "ht:i:o:" opt; do
    case $opt in
    h)
        echo "$usage"
        exit 0
        ;;
    i) input="$OPTARG" ;;
    o) output="$OPTARG" ;;
    t) title="$OPTARG" ;;
    \?)
        usage
        exit 1
        ;;
    esac
done

set -e -x

docker run --rm -v "${PWD}:/data" --user "$(id -u):$(id -g)" pandoc/core \
    -t revealjs --standalone \
    --slide-level=2 \
    -V theme=moon \
    --metadata=title="$title" \
    -o "$output" "$input"
