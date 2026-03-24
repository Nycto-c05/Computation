#!/bin/bash

DIR1="/home/nycto/Computation/output"
DIR2="/home/nycto/Computation/data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output"

for file in "$DIR1"/*; do
  fname=$(basename "$file")

  if [ ! -f "$DIR2/$fname" ]; then
    echo "$fname : NOT PRESENT"
    continue
  fi

  if cmp -s "$DIR1/$fname" "$DIR2/$fname"; then
    echo "$fname : PASS"
  else
    echo "$fname : FAIL"
  fi
done
