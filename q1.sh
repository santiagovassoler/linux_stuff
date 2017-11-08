#!/bin/bash
smallest=$1
largest=$1
while [ $# -gt 0 ]; do
  if echo $1 | grep -Eq "[^0-9-]"; then
     echo \"$1\" is not an integer...
     exit 1
  fi
  if [ $1 -gt $largest ] ; then
    largest=$1
  elif [ $1 -lt $smallest ] ; then
    smallest=$1
  fi
  shift
done
echo largest is $largest
echo smallest is $smallest
