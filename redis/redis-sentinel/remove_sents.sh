#!/bin/bash

conts=`docker ps -a | grep -i 'sent.\+' | awk '{print $(NF)}'`

for c in $conts
do
  docker stop $c
  docker rm $c
done


