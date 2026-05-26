#!/bin/bash

clear

typewriter(){
    text="$1"
    speed="${2:-0.02}"

    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep "$speed"
    done
    echo
}

pause(){
sleep 1
}

typewriter "CONNECTING TO DEVKIT CORE..."
pause

typewriter "AUTH SUCCESS"
pause

typewriter "LOADING MEMORY ARCHIVE..."
pause

echo
typewriter "==============================="
typewriter "ANDREW_DEVKIT // LEVEL 2"
typewriter "==============================="
echo

typewriter "Available commands:"
echo "help"
echo "logs"
echo "scan"
echo "status"
echo

while true
do

printf "> "
read cmd

case "$cmd" in

help)

echo
echo "commands:"
echo "help"
echo "logs"
echo "scan"
echo "status"
echo "exploit"
echo
;;

logs)

echo
echo "log_01 system boot"
echo "log_02 user detected"
echo "log_03 auth success"
echo "log_04 memory sync"
echo "log_05 anomaly detected"
echo "log_06 trace running"
echo "log_07 corruption rising"
echo "log_08 hidden path found"
echo "log_09 core fragment unstable"
echo "log_10 core link established"
echo "log_11 unknown signal"
echo "log_12 memory gap"
echo "log_13 hidden fragment"
echo "log_14 unstable node"
echo "log_15 warning"
echo "log_16 corrupted entry"
echo "log_17 anomaly increase"
echo "log_18 deep scan"
echo "log_19 CORE READY"
echo
;;

scan)

echo
echo "Scanning sectors..."
sleep 1

echo
echo "VULNERABILITIES DETECTED:"
echo
echo "sector_07"
echo "sector_13"
echo "sector_19"
echo
;;

status)

echo
echo "SYSTEM STATUS: UNSTABLE"
echo "MEMORY INTEGRITY: 73%"
echo "ANOMALIES: 3"
echo
;;

exploit)

echo
echo "BREACH INITIATED..."
sleep 1

echo "Accessing hidden fragment..."
sleep 1

echo
echo "FRAGMENT RECOVERED"
echo
echo "/memory/sector_07"
echo
;;

*)

echo
echo "UNKNOWN COMMAND"
echo
;;

esac

done
