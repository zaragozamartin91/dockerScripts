#!/bin/bash

docker run --name zoo --network "zk-net" --restart always -d zookeeper

