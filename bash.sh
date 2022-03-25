#!/bin/bash

podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root \
    --entrypoint=/bin/bash \
    zmkfirmware/zephyr-west-action-arm
