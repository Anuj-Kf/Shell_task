#!/bin/bash

PID=$(ps aux | grep "python3 rangen.py" | grep -v grep | awk '{print $2}')
#PID=$(ps -ef | grep "rangen.sh" | grep -v grep | awk '{print $2}')
echo $PID
if [ -n "$PID" ]; then
    
    echo "Program is already running with PID $PID"
    
else
    #echo "Program is not running"
    # Start the program in the background and redirect standard error to /dev/null
    python3 rangen.py >/dev/null 2>&1 &
    echo "Program started"
fi
