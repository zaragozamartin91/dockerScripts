#!/bin/bash

command='redis-cli --cluster create '
for i in {1..6}
do
	ipad=`docker inspect red${i} | grep -i IPAddress | grep -v '""' | grep -v null | xargs | cut -d' ' -f2 | cut -d, -f1`
	echo "red${i}: $ipad"
	command+="${ipad}:700${i} "
done

command+='--cluster-replicas 1 --cluster-yes'

echo "command: $command"

docker exec red1 $command 

