#!/bin/bash
docker run -it --link some-redis:redis --rm redis redis-cli -h redis -p 6379

