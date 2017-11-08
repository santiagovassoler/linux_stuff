#!/bin/sh
date=$(date "+%a %d-%m-%Y %H:%M")
for image in media/*.jpg; do
  filename=$(basename $image)
  if [ -e thumbs/$filename ]; then
    echo $filename has already been converted
  else
    echo Converting $filename
    convert $image -resize "640x480>" -rotate 90 -background magenta -pointsize 15 -gravity Center label:"$date" -append -rotate -90 thumbs/$filename
  fi
done
