#!/bin/bash -e

docker run \
    -v `pwd`:/workspace \
    --network host \
    gcr.io/kaniko-project/executor:v1.6.0-debug \
    --dockerfile /workspace/docker/Dockerfile \
    --insecure-registry "localhost:5000" \
    --destination "localhost:5000/replicate-0:kaniko-v1.6.0-debug" \
    --context dir:///workspace/

docker run \
    -v `pwd`:/workspace \
    --network host \
    gcr.io/kaniko-project/executor:v1.9.0 \
    --dockerfile /workspace/docker/Dockerfile \
    --insecure-registry "localhost:5000" \
    --destination "localhost:5000/replicate-0:kaniko-v1.9.0" \
    --context dir:///workspace/
