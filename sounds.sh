#!/bin/bash
file=1;
for audio in media/*.mp3; do
  if [ $audio != "media/footsteps_forest_01.mp3" ]; then
    echo Processing $audio
    filename="00$file"
    filename=${filename:(-3)}
    sox $audio temp.wav silence 1 0 0
    sox media/footsteps_forest_01.mp3 temp.wav -C 128 $filename.mp3
    rm temp.wav
    let file=file+1
  fi
done
