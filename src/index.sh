#!/usr/local/bin/bash

#ffmpeg -v quiet -stats -y -i "./assets/snapshot1168.webp" "./assets/abc.webp.jpg"

#for x in `ls *.webp`; do  ffmpeg -i $x $x.jpg; done
#for x in `ls ./assets/*.webp`; do  ffmpeg -i $x $x.jpg; done
#for x in `ls ./assets/*.webp`; do  magick $x $x.jpg; done


#for x in `ls ./assets/*.webp`; do echo $x; done

# 判断是文件 还是 目录
filename="/Users/stone/git_repository/snbook_edit/src/assets/"
#if [ -d "$filename" ]; then
#
#  echo "$filename is a directory "
#
#elif [ -f "$filename" ]; then
#
#  echo "$filename is a file"
#
#fi

for x in `ls $filename/*.webp`; do  magick $x $x.jpg; done
