#!/bin/bash
# https://www.cyberciti.biz/faq/linux-find-out-raspberry-pi-gpu-and-arm-cpu-temperature-command/

clear
echo "Pi CPU Temperature Monitor"
echo "-------------------------------------------"
maxtc=0
maxtf=0

while [ 1 ]
do
  cpu=$(</sys/class/thermal/thermal_zone0/temp)
  tc=$((cpu/1000))
  tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
  if [ $tc -gt $maxtc ]; then
    maxtc=$tc
  fi
  if (( $(echo "$tf > $maxtf" | bc -l) )); then
    maxtf=$tf
  fi
  echo "$(date) @ $(hostname)     CPU => "$tc"'C/"$tf"'F     MAX => "$maxtc"'C/"$maxtf"'F     [ctl-c to exit]"
  sleep 5
done


# continuous temp monitor in terminal
# https://raspberrypi.stackexchange.com/questions/103/what-is-the-maximum-minimum-operational-temperature
# while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-2));cat /sys/class/thermal/thermal_zone0/temp;tput rc;done &
