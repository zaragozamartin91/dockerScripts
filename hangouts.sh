#!/bin/bash
docker run --name hangups-session --entrypoint true tdryer/hangups
docker run -it --rm --name hangups --volumes-from hangups-session tdryer/hangups
