#!/bin/bash

#podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root --name zmk zmkfirmware/zephyr-west-action-arm build "-p -s zmk/app"
podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root --name zmk zmkfirmware/zephyr-west-action-arm build "-p -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/app/config -DSHIELD=kyria_left"
cp build/zephyr/zmk.uf2 ../kyria_left-nice_nano_v2-zmk.uf2

#podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root --name zmk zmkfirmware/zephyr-west-action-arm build "-p -s zmk/app"
podman run --rm -it -v $(pwd):/app -w /app -v zmk-home:/root --name zmk zmkfirmware/zephyr-west-action-arm build "-p -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/app/config -DSHIELD=kyria_right"
cp build/zephyr/zmk.uf2 ../kyria_right-nice_nano_v2-zmk.uf2
