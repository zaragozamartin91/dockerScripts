#!/bin/bash


for i in {1..6}
do
  echo "Stopping red${i}"
  docker stop red${i}
  docker rm red${i}
done


