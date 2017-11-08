#!/bin/bash
num=1;
while [ $# -gt 0 ]; do
  echo argument $num is \"$1\".
  shift
  let num++
done
