#!/bin/bash
nanraka=1
tag_name=$1
dan_url="https://danbooru.donmai.us/posts?page=1&tags="$1
curl -o gnp.txt $dan_url
curl -o gnp.txt https://danbooru.donmai.us/posts?page=1&tags=ijichi_nijika
sed -ne '/360x360/p' gnp.txt > gnap.txt
sed -i 's@<source type="image/jpeg" srcset="@@' gnap.txt
sed -i 's/              //' gnap.txt
sed -i 's/ 1x, .*//' gnap.txt
sed -i "s/180x180/720x720/g" gnap.txt
sed -i -z 's/\n/ /g; s/$/\n/' gnap.txt
mkdir ./image/$tag_name"/"
cd ./image/$tag_name
cat sttk.txt | wget
let nannraka++
dan_url=$(echo $dan_url | sed 's/page=1/page='$nannraka'/g')
echo $dan_url
cd /content