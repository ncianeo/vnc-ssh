#!/bin/bash

VNC_VIEWER_PATH="YOUR VNC VIEWER PATH"
VNC_DISPLAY_NUMBER="YOUR VNC DISPLAY NUMBER(1-9)"
SSH_HOST_NAME="YOUR VNC HOST(username@host)"
SSH_PORT="VNC HOST's SSH PORT(default=22)"

if netstat -an |grep LISTEN |grep 127.0.0.1:590$VNC_DISPLAY_NUMBER > /dev/null;
then
echo "port 590$VNC_DISPLAY_NUMBER is already used. VNC viewer would try to connect to this port."
"$VNC_VIEWER_PATH" localhost:$VNC_DISPLAY_NUMBER &
else 
ssh -fNT -x -L 590$VNC_DISPLAY_NUMBER:127.0.0.1:590$VNC_DISPLAY_NUMBER $SSH_HOST_NAME -p $SSH_PORT
"$VNC_VIEWER_PATH" localhost:$VNC_DISPLAY_NUMBER &
fi
