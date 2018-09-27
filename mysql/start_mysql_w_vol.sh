#!/bin/bash
name=$1
tname=${name:-some_mysql}
docker run --name $tname -e MYSQL_ROOT_PASSWORD=root -v mysql-vol:/var/lib/mysql -p 3306:3306 -d mysql
