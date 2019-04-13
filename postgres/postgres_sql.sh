#!/bin/bash


tname=$1
vname=${tname:-"jenk-pos"}


docker exec -it "$vname" psql -U postgres
