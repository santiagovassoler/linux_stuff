#!/bin/bash
cat ~/.bash_history | while read line; do
  if echo $line | grep -Eq "^(mkdir|cd)"; then
   dir=$(echo $line | sed -r 's/(mkdir|cd) +//')
    if [ -d "$dir" ]; then
      echo "YES: $dir"
    else
      echo "NO: $dir"
    fi
   fi
done
