#!/bin/bash

for i in {1..3}
do
  ipaddr=`docker inspect red$i | grep IPAddress | grep -v '""' | grep -v null | xargs | cut -d' ' -f 2 | sed 's/,//g'`
  echo "red$i : $ipaddr"
done

#6379/tcp, 0.0.0.0:7003->7003/tcp