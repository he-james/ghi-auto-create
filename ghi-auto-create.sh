#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

mapfile -t issues < issues.txt

for i in '%s\n' "${issues[@]}"
do
  j=$(ghi open $i)
  n=$(echo $j | sed -e 's/.*#\(.*\):.*/\1/')
  echo created issue #$n
done

IFS=$SAVEIFS
