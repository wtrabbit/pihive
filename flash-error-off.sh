#!/bin/bash

sudo kill $(ps aux | grep ./flash-error-on.sh | grep -v  grep | awk '{ print $2 }') > /dev/null 2>&1
sudo ./led-on.sh
