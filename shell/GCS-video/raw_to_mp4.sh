LOC = $1

#gst-launch-0.10 filesrc location=$1 ! h264parse ! ffdec_h264 ! ffmpegcolorspace ! deinterlace ! xvimagesink
gst-launch-0.10 filesrc location=$1 ! h264parse ! mp4mux ! filesink location=$1.mp4
