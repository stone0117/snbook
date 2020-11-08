#!/usr/bin/env bash

# local serve
# gitbook serve

gitbook build

cp -R _book/ $HOME/git_repository/snbook/

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

proxychains4 git push

cd $HOME/git_repository/snbook

#rm cp.sh
#rm gulpfile.js

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

proxychains4 git push
