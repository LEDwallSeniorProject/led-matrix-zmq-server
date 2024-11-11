#!/bin/bash
rm -rf ../build
mkdir -p ../build
cd ../build
cmake -DRPI_RGB_LED_MATRIX_DIR=/home/led/git/rpi-rgb-led-matrix ..
make
