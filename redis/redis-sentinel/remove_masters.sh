#!/bin/bash

conts=`docker ps -a | grep -i 'red.\+' | awk '{print $(NF)}'`

for c in $conts
do
  docker stop $c
  docker rm $c
done


