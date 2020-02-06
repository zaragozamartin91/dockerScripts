#!/bin/bash
name=$1
tname=${name:-some_mysql}
docker run --name $tname -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -p 33060:33060 -d mysql

