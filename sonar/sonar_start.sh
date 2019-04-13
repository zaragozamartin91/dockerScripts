#!/bin/bash

tname=$1
vname=${tname:-"jenk-sonar"}

tnet=$2
vnet=${tnet:-"jenk-net"}

tdburl=$3
vdburl=${tdburl:-"jdbc:postgresql://jenk-pos/sonar"}

tdbusr=$4
vdbusr=${tdbusr:-"postgres"}

tdbpwd=$5
vdbpwd=${tdbpwd:-"postgres"}

docker run -d --network "$vnet" --name "$vname" -p 9000:9000 -e sonar.jdbc.username="$vdbusr" -e sonar.jdbc.password="$vdbpwd" -e sonar.jdbc.url="$vdburl" sonarqube:7.7-community

