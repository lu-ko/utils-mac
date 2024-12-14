#!/bin/bash

# Disclaimer: This is just snipped of my unfinished work!

timestamp=$(date +%s%N)
expected=$1
item_size=2147483647
loop_iterations=10
destination_path=$1

randomize1 () {
  for i in {1..10}
  do
    filename=$destination_path/$i.txt
    #echo $i".iteration started. Creating file: "$filename
    echo $filename
    openssl rand -base64 2147483647 > $filename
  done
}

randomize2 () {
  destination=$(date +%s)
  mkdir $destination
  written=0
  while [ "$written" -lt "$expected" ]
  do
    filename=$(date +%s%N)
    filepath=$destination/$filename.txt
    remaining=$((expected - written))
    filesize=$(shuf -i 0-$remaining -n 1)
    echo "Creating file $filepath with size=$filesize. Written size=$written. Remaining size=$remaining"
    openssl rand -base64 $filesize > $filepath
    written=$((written + filesize))
  done
}

echo "Randomizer"
echo "You can create new files (ovewrite existing ones)"
echo "with random geneated data by these settings:"
echo "- number of files: "$loop_iterations
echo "- file size: "$item_size
echo "- destination: "$destination_path
echo "- expected size: "$expected
echo ""
echo "Do You want to start processing? (Y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
  #mkdir $destination_path
  randomize2
  echo "Done."
else
  echo "Good bye!"
fi


