#!/bin/bash

dt=$(date '+%d-%b-%Y %H:%M:%S');
echo "creating commit on \"$dt\""
ms=""
if [ -n "$1" ]; then
    ms=": $1"
fi

git fetch && git pull && git add . && git commit -m "$dt$ms" && git push
