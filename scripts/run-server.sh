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
	--pwm-bits 8 \
	--limit-hz 120 \
	--busy-waiting \
	#--show-hz \
	#--max-brightness 100 \
