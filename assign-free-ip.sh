#!/bin/bash

#!/bin/bash
#
# var
TRY_IP=0.0.0.0
FREE_IP_ADDRESS=0.0.0.0
#
# check google dns for active connection
TRY_IP=8.8.8.8
echo "["$(date)"] Ping sent to "$TRY_IP
if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
    echo "["$(date)"] Ping responded; Internet connection up ["$TRY_IP"]" >&2
    # check address 1 of 8
    TRY_IP=192.168.1.72
    echo "["$(date)"] Ping sent to "$TRY_IP
    if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
        echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
        # check address 2 of 8
        TRY_IP=192.168.1.73
        echo "["$(date)"] Ping sent to "$TRY_IP
        if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
            echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
            # check address 3 of 8
            TRY_IP=192.168.1.74
            echo "["$(date)"] Ping sent to "$TRY_IP
            if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                # check address 4 of 8
                TRY_IP=192.168.1.75
                echo "["$(date)"] Ping sent to "$TRY_IP
                if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                    echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                    # check address 5 of 8
                    TRY_IP=192.168.1.76
                    echo "["$(date)"] Ping sent to "$TRY_IP
                    if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                        echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                        # check address 6 of 8
                        TRY_IP=192.168.1.77
                        echo "["$(date)"] Ping sent to "$TRY_IP
                        if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                            echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                            # check address 7 of 8
                            TRY_IP=192.168.1.78
                            echo "["$(date)"] Ping sent to "$TRY_IP
                            if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                                echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                                # check address 8 of 8
                                TRY_IP=192.168.1.79
                                echo "["$(date)"] Ping sent to "$TRY_IP
                                if ping -c1 -w3 $TRY_IP >/dev/null 2>&1; then
                                    echo "["$(date)"] Ping responded; IP address allocated ["$TRY_IP"]" >&2
                                else
                                    echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                                    FREE_IP_ADDRESS=$TRY_IP
                                fi # end 8 of 8
                            else
                                echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                                FREE_IP_ADDRESS=$TRY_IP
                            fi # end 7 of 8
                        else
                            echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                            FREE_IP_ADDRESS=$TRY_IP
                        fi # end 6 of 8
                    else
                        echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                        FREE_IP_ADDRESS=$TRY_IP
                    fi # end 5 of 8
                else
                    echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                    FREE_IP_ADDRESS=$TRY_IP
                fi # end 4 of 8
            else
                echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
                FREE_IP_ADDRESS=$TRY_IP
            fi # end 3 of 8
        else
            echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
            FREE_IP_ADDRESS=$TRY_IP
        fi # end 2 of 8
    else
        echo "["$(date)"] Ping did not responded; IP address available ["$TRY_IP"]" >&2
        FREE_IP_ADDRESS=$TRY_IP
    fi # end 1 of 8
else
      echo "["$(date)"] Ping did not respond; No active internet connection found ["$TRY_IP"]" >&2
fi 
echo "["$(date)"] Free ip address: "$FREE_IP_ADDRESS
