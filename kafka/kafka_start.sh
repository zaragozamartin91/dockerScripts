#!/bin/bash

docker run -d --name kaf -p 9092:9092 --network "zk-net" mzkaf

