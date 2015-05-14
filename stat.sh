#!/bin/bash
while :
do
DATE=$(date +%H:%M)
USERS=`curl -s http://10.39.1.35:443/ | xmllint --xpath 'sum(/objects/object/real-users/text())' -`
echo "$DATE   $USERS" #>> viewers.txt
sleep 60
done
