#!/bin/bash
filename=$1
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

mapfile -t issues < $filename

for i in '%s\n' "${issues[@]}"
do
  j=$(ghi open $i)
  n=$(echo $j | sed -e 's/.*#\(.*\):.*/\1/')
  echo "created issue #"$n
done

IFS=$SAVEIFS
