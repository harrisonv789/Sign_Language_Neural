#/bin/sh

gst-launch-1.0 v4l2src device=/dev/video0 ! videorate ! videoscale ! video/x-raw, width=480, height=320, framerate=10/1 ! aspectratiocrop aspect-ratio=10/10 ! videoflip method=rotate-180 ! videoconvert ! jpegenc ! rtpjpegpay ! udpsink host="172.20.10.3" port=5001
