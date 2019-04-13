#!/bin/bash

tnet=$1
vnet=${tnet:-"jenk-net"}

tname=$2
vname=${tname:-"jenk-pos"}

tvol=$3
vvol=${tvol:-"jenk-pos-vol"}

docker run --network "$vnet" --name "$vname" -p 5432:5432 -v "$vvol":/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -d postgres

