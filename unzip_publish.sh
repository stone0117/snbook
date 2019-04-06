#!/usr/local/bin/bash

cd ./records/

for item in *.zip; do
    #    echo "item = ${item}"
    tmp=${item##*/}
    r=${tmp%.*}
    unzip -o "$item" -d "${r}"
    rm "$item"
done

echo -e "\033[0;32;1m=============================================\033[0m"

gitbook build

cp -R _book/ $HOME/git_repository/snbook/

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

git push

cd $HOME/git_repository/snbook

#rm cp.sh
#rm gulpfile.js

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

git push
