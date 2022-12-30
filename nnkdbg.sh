#!/bin/bash
nanraka=1
tag_name=$1
dan_url="https://danbooru.donmai.us/posts?page=1&tags="$1
curl -o gnp.txt $dan_url
sed 's@<a id="app-logo" href="/"><img src="/packs/static/danbooru-logo-128x128-ea111b6658173e847734.png" /></a>@@g' gnp.txt > sttk.txt
sed 's/ //g' sttk.txt >stk.txt
sed '/^<html/d' stk.txt > sttk.txt
sed '/^<he/d' sttk.txt > stk.txt
sed '/^<doc/d' stk.txt > sttk.txt
sed '/^<me/d' sttk.txt > stk.txt
sed '/^<titl/d' stk.txt > sttk.txt
sed '/^<lin/d' sttk.txt > stk.txt
sed '/^<scr/d' stk.txt > sttk.txt
sed '/^<\/he/d' sttk.txt > stk.txt
sed '/^<bod/d' stk.txt > sttk.txt
sed '/^<he/d' sttk.txt > stk.txt
sed '/^$/d' stk.txt > sttk.txt
sed '/^<div/d' sttk.txt > stk.txt
sed '/^<aid/d' stk.txt > sttk.txt
sed '/^<ahr/d' sttk.txt > stk.txt
sed '/^<nav/d' stk.txt > sttk.txt
sed '/^<spa/d' sttk.txt > stk.txt
sed '/^<li/d' stk.txt > sttk.txt
sed '/^<for/d' sttk.txt > stk.txt
sed '/^<h2/d' stk.txt > sttk.txt
sed '/^<sec/d' sttk.txt > stk.txt
sed '/^<asi/d' stk.txt > sttk.txt
sed '/^<inp/d' sttk.txt > stk.txt
sed '/^<butt/d' stk.txt > sttk.txt
sed '/^<acl/d' sttk.txt > stk.txt
sed '/^<lic/d' stk.txt > sttk.txt
sed '/^<pi/d' sttk.txt > stk.txt
sed '/^<ul/d' stk.txt > sttk.txt
sed '/^<for/d' sttk.txt > stk.txt
sed '/^<svg/d' stk.txt > sttk.txt
sed '/^<art/d' sttk.txt > stk.txt
sed '/^<sou/d' stk.txt > sttk.txt
sed '/^<\//d' sttk.txt > stk.txt
sed '/^<foo/d' stk.txt > sttk.txt
sed '/^<ati/d' sttk.txt > stk.txt
sed '/^<imgc/d' stk.txt > sttk.txt
sed '/^\/</d' sttk.txt > stk.txt
sed '/^\//d' stk.txt > sttk.txt
sed '/^$/d' sttk.txt > stk.txt
sed 's/<imgsrc="//g' stk.txt > sttk.txt
sed 's/"//g' sttk.txt > stk.txt
sed 's/=//g' stk.txt > sttk.txt
sed 's@</picture>@@g' sttk.txt > stk.txt
sed 's/width.*//' stk.txt > sttk.txt
sed 's/180x180/720x720/g' sttk.txt > stk.txt
sed -ne '/https/p' stk.txt > sttk.txt
mkdir ./image/$tag_name"/"
cd ./image/$tag_name
cat sttk.txt | wget
let nannraka++
dan_url=$(echo $dan_url | sed 's/page=1/page='$nannraka'/g')
echo $dan_url
cd /content