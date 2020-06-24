#!/usr/local/bin/bash

#cd ./records/
#
#for item in *.zip; do
#    #    echo "item = ${item}"
#    tmp=${item##*/}
#    r=${tmp%.*}
#    unzip -o "$item" -d "${r}"
#    rm "$item"
#done

cd $HOME/git_repository/snbook_edit/records

for item in *.zip; do
    #    echo "item = ${item}"
    tmp=${item##*/}
    r=${tmp%.*}
    unzip -o "$item" -d "${r}"
    rm "$item"
done

echo -e "\033[0;32;1m=============================================\033[0m"
