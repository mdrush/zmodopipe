#!/bin/bash
until ffmpeg -f h264 -framerate 15 -xerror -i /tmp/zmodo0 -f h264 pipe:1 > /tmp/zmodo0_0; do
	echo "FFmpeg crashed with exit code $?. Respawning..." >&2
	sleep 1
done