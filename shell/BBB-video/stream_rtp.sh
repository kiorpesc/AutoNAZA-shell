#!/bin/bash

# This script takes raw H264 from the webcam and sends it to Ground Control via RTP.
# Currently runs at 640x480, 30fps, can be modified to take more arguments if necessary.

HOST=$1
PORT=$2

gst-launch -v -e uvch264_src device=/dev/video0 name=src auto-start=true src.vidsrc ! queue ! video/x-h264,width=640,height=480,framerate=30/1 ! legacyh264parse ! rtph264pay ! udpsink host=$HOST port=$PORT
