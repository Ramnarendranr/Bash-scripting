#!/bin/bash
# Send an alert if disk usage exceeds a threshold

THRESHOLD=80
EMAIL="admin@example.com"

usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$usage" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD% on $(hostname) at $(date)" | mail -s "Disk Usage Alert" "$EMAIL"
fi

