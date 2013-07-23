gst-launch -v udpsrc port=8888 caps='application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264' ! rtph264depay ! h264parse! filesink location=yargh.raw
