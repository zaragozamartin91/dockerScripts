#!/bin/bash

for i in {1..3}
do
  ipaddr=`docker inspect sent$i | grep IPAddress | grep -v '""' | grep -v null | xargs | cut -d' ' -f 2 | sed 's/,//g'`
  port=`docker ps | grep -i sent$i | awk '{print $10}' | cut -d: -f2`
  echo "sent$i : $ipaddr : $port"
done

