#!/bin/bash

show_arg () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || show_arg "upload.sh x.x.x"

echo "uploading $1... "

git add .
git commit -m "CoreOne $1"
git push

# echo "uploaded"
