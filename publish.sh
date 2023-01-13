#!/bin/bash

show_arg () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || show_arg "publish x.x.x"

echo "publishing... " $1

git add .
git commit -m $1
# git tag $1
# git push
# git push --tags
