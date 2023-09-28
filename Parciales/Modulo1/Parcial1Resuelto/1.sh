#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Uso: $0 FECHA IP1 [IP2 IP3 ...]"
    exit 1
fi

LOG_DIR="/var/log/nginx"
LOG_FILE="$LOG_DIR/access.$1.log"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: No existe un archivo para esa fecha"
    exit 2
fi

IPs=("${@:2}")

for ip in "${IPs[@]}"; do
    count=$(grep -c "^$ip" "$LOG_FILE")
    echo "$ip $count"
done

exit 0
