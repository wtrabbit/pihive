#!/bin/bash

# run as "sudo ~/pihive-master/flash-error-on.sh &"
while :
do
   sudo ~/pihive-master/uhubctl/uhubctl -l 2 -a 0 > /dev/null 2>&1
   sleep 1
   sudo ~/pihive-master/uhubctl/uhubctl -l 2 -a 1 > /dev/null 2>&1
   sleep 1
done
