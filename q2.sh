#!/bin/bash
if [ -s "$1" ]; then
  echo file \"$1\" has not been deleted
else
  echo empty file \"$1\" deleted
  rm "$1"
fi
