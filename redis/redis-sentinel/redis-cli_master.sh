#!/bin/bash

docker run -it --rm --network my-net redis redis-cli -h red1 -p 7001 -a despegar

