#!/bin/sh

# Capture raw video from the h264 webcam and write it to a file,
# then rename the file to prevent overwrites

FRAMES = $1
RES = $2

echo "Number of frames to capture: $FRAMES"
echo "Resolution chosen: $RES"

#set resolution to hd or sd
if [ "$RES" == "hd" ]; then
  v4l2-ctl --set-fmt-video=width=1920,height=1080,pixelformat=1
else
	v4l2-ctl --set-fmt-video=width=640,height=480,pixelformat=1
fi

#framerate defaults to 30
v4l2-ctl --set-parm=30

#begin capturing video
echo "Capturing now..."
./capture -c $1
sleep 2

#rename raw video file so it is not appended to or overwritten
mv video.raw $(date +"%Y%m%d-%H%M")-webcam.raw
