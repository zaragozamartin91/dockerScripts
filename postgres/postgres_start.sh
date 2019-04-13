#!/bin/bash

tname=$1
vname=${tname:-"jenk-pos"}

tnet=$2
vnet=${tnet:-"jenk-net"}

tvol=$3
vvol=${tvol:-"jenk-pos-vol"}

docker run --network "$vnet" --name "$vname" -p 5432:5432 -v "$vvol":/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -d postgres

