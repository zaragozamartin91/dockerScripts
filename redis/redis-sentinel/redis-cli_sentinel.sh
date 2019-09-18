#!/bin/bash

docker run -it --rm --network my-net redis redis-cli -h sent1 -p 5001

