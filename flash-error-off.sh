#!/bin/bash

sudo kill $(ps aux | grep ./flash-error-on.sh | grep -v  grep | awk '{ print $2 }')
sudo ~/pihive-master/led-on.sh
