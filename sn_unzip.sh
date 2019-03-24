#!/usr/local/bin/bash

cd ./records/

for item in *.zip; do
    #    echo "item = ${item}"
    tmp=${item##*/}
    r=${tmp%.*}
    unzip -o "$item" -d "${r}"
    rm "$item"
done
