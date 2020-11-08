#!/usr/local/bin/bash

#ffmpeg -v quiet -stats -y -i "./assets/snapshot1168.webp" "./assets/abc.webp.jpg"

#for x in ls *.webp; do  ffmpeg -i $x $x.jpg; done
for x in ls *.webp; do  magick $x $x.jpg; done


