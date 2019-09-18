#!/bin/bash

basedir=`pwd`

for i in {1..6}
do
  echo "Starting redis instance red${i}..."
  let port=700${i}
  let cport=port+10000
  docker run -v "$basedir/node${i}.conf":/usr/local/etc/redis/redis.conf --name red${i} --network my-net -p $port:$port -p $cport:$cport -d redis redis-server /usr/local/etc/redis/redis.conf
done


