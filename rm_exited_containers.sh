#!/bin/bash

# Remove exited container(s)
docker ps -a -q -f "status=exited" | xargs -r docker rm || true &&

# Remove created container(s)
docker ps -a -q -f "status=created" | xargs -r docker rm || true
