#!/usr/bin/env bash

gitbook build

cp -R _book/ $HOME/git_repository/snbook/

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

git push

cd /Users/stone/git_repository/snbook

git add --all

git commit -am "`date '+%Y-%m-%d %H:%M:%S'` default commit message"

git push
