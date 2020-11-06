#!/bin/bash
#
#  Update the base dex image we're using
#

set -e

# Find the short Git revision
rev=$(git rev-parse --short HEAD)

# Build the Docker image
docker build -t dex:wpl-$rev .

# Tag it
docker tag dex:wpl-$rev docker.worldprogramming.com/dex:wpl-$rev

# Push it
docker push docker.worldprogramming.com/dex:wpl-$rev
