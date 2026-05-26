#!/bin/bash

clear

# =========================
# SAFE TYPEWRITER
# =========================
typewriter() {
    text="$1"
    delay="${2:-0.02}"

    i=0
    while [ $i -lt ${#text} ]; do
        printf "%s" "${text:$i:1}"
        sleep "$delay"
        i=$((i+1))
    done
    echo
}

pause(){
    sleep 0.8
}

# =========================
# INTRO
# =========================
typewriter "CONNECTING TO DEVKIT CORE..." 0.03
pause

typewriter "AUTHENTICATING USER..." 0.03
pause

typewriter "CHECKING MEMORY ARCHIVE..." 0.03
pause

echo
typewriter "============================="
typewriter " ANDREW_DEVKIT // LEVEL 2"
typewriter "============================="
echo

typewriter "type 'help' to see commands"
echo

# =========================
# COMMAND LOOP (SAFE)
# =========================
while true
do
    printf "> "
    read cmd

    # empty input protection
    if [ -z "$cmd" ]; then
        continue
    fi

    case "$cmd" in

    help)
        echo
        echo "commands:"
        echo "help"
        echo "logs"
        echo "scan"
        echo "status"
        echo "exploit"
        echo "exit"
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
        echo "log_15 warning issued"
        echo "log_16 corrupted entry"
        echo "log_17 anomaly increase"
        echo "log_18 deep scan active"
        echo "log_19 CORE READY"
        echo
    ;;

    scan)
        echo
        typewriter "Scanning system sectors..." 0.02
        pause
        echo "VULNERABILITIES DETECTED:"
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
        typewriter "BREACH INITIATED..." 0.03
        pause
        echo "Accessing hidden memory..."
        pause
        echo
        echo "FRAGMENT RECOVERED: /memory/sector_07"
        echo
    ;;

    exit)
        echo
        typewriter "DISCONNECTING FROM CORE..." 0.03
        pause
        typewriter "SESSION CLOSED"
        echo
        break
    ;;

    *)
        echo "UNKNOWN COMMAND"
    ;;

    esac

done
