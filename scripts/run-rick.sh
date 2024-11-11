#!/bin/bash

ffmpeg -re -i rickroll.mp4 -vf scale=128:128 -f rawvideo -pix_fmt rgba - \
	| ../build/led-matrix-zmq-pipe -w 128 -h 128 -f "tcp://localhost:55000"
