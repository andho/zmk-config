#!/bin/bash

podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root \
    zmkfirmware/zephyr-west-action-arm \
    init "-l app"

podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root \
    zmkfirmware/zephyr-west-action-arm \
    update

podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root \
    zmkfirmware/zephyr-west-action-arm \
    update zephyr-export
