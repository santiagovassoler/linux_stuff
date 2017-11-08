#!/bin/bash
for video in media/*.mp4 media/*.mov; do
  if [ ! -e $video ]; then
    echo No videos to convert
    exit 1
  fi
  echo Processing $video
  dir=$(dirname "$video") 
  file=$(basename "$video" .mp4)
  file=$(basename "$file" .mov)
  avconv -i $video -s 80x50 $dir/$file.mpg

  mv $video $video.backup
done
