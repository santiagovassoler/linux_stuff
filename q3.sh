#!/bin/bash
if [ $# -eq 1 ]; then
  dir=$1
else
  echo -n Please enter directory name:
  read dir
fi
  echo $dir

numdir=0
numfile=0
for item in $dir/*; do
  if [ -d "$item" ]; then
   let numdir=numdir+1
  elif [ -f "$item" ]; then
   let numfile=numfile+1
  fi
done

echo $dir contains $numdir directories
echo $dir contains $numfile files
