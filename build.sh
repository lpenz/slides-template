#!/bin/bash

input=README.md
output=index.html
title=slide-template
style=style.css

usage="$0 [-i input.md] [-o output.html] [-t title]"

while getopts "ht:i:o:s:" opt; do
    case $opt in
    h)
        echo "$usage"
        exit 0
        ;;
    i) input="$OPTARG" ;;
    o) output="$OPTARG" ;;
    t) title="$OPTARG" ;;
    s) style="$OPTARG" ;;
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
    --css="$style" \
    --metadata=title="$title" \
    -o "$output" "$input"
