#!/bin/bash
while true; do
    if ! lsof -i:8080 > /dev/null 2>&1; then
        cd /workspace/salary-calculator
        python3 -m http.server 8080 --bind 0.0.0.0 &
        echo "$(date): Server restarted" >> /workspace/salary-calculator/alive.log
    fi
    sleep 30
done
