#!/bin/bash

sudo ../build/led-matrix-zmq-server \
	--cols 64 \
	--rows 64 \
	--chain-length 4 \
	--parallel 1 \
	--pixel-mapper "U-Mapper" \
	--hardware-mapping "adafruit-hat-pwm" \
	--gpio-slowdown 3 \
	--frame-endpoint "tcp://*:55000" \
	--control-endpoint "tcp://*:55001" \
	--pwm-bits 6 \
	--max-brightness 100 \
	--busy-waiting \
	--pwm-lsb-ns 300 \
	--show-hz
	#--limit-hz 30 \