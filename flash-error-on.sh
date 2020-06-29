#!/bin/bash

while :
do
   sudo ./uhubctl -l 2 -a 0 > /dev/null 2>&1
   sleep 1
   sudo ./uhubctl -l 2 -a 1 > /dev/null 2>&1
   sleep 1
done
