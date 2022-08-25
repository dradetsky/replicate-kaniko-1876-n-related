#!/bin/bash

echo "SHOW docker"
docker run --rm replicate-0:docker /bin/sh -c '/bin/ls -l /home'

echo "SHOW kaniko v1.6.0-debug"
docker run --rm localhost:5000/replicate-0:kaniko-v1.6.0-debug /bin/sh -c '/bin/ls -l /home'

echo "SHOW kaniko v1.9.0"
docker run --rm localhost:5000/replicate-0:kaniko-v1.9.0 /bin/sh -c '/bin/ls -l /home'
