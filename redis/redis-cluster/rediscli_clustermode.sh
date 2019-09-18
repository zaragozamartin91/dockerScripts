#!/bin/bash

host=$1
port=$2

docker run --rm -it redis redis-cli -c -h $host -p $port

