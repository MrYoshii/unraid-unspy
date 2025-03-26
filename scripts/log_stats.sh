#!/bin/bash
LOG_DIR="/mnt/user/appdata/unspy/logs"
mkdir -p "$LOG_DIR"
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free | awk '/Mem:/ { printf("%.2f", $3/$2 * 100.0) }')
NET=$(cat /proc/net/dev | grep eth0 | awk '{print $2":"$10}')
echo "$(date +%s),$CPU,$MEM,$NET" >> "$LOG_DIR/stats.csv"
