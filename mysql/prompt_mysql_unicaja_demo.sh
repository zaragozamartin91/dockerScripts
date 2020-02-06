#!/bin/bash
docker run -it --rm mysql sh -c 'exec mysql -h172.28.194.244 -P3306 -uadmin -padmin'