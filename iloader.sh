#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

mapfile -t issues < issues.txt

for i in '%s\n' "${issues[@]}"
do
  j=$(ghi open $i)
  n=$(echo $j | sed -e 's/.*#\(.*\):.*/\1/')
  if [[ $i == *"(1."* ]]; then
    ghi assign -u blessedcrown $n
  elif [[ $i == *"(2."* ]]; then
    ghi assign -u radha-parikh $n
  elif [[ $i == *"(3."* ]]; then
    ghi assign -u sdmungov $n
  elif [[ $i == *"(4."* ]]; then
    ghi assign -u naahumph $n
  elif [[ $i == *"(5."* ]]; then
    ghi assign -u he-james $n
  else 
    echo "None"
fi
done

IFS=$SAVEIFS
