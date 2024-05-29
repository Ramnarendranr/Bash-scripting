#!/bin/bash
# Log CPU usage every 5 seconds

while true; do
  echo "$(date): $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')" >> /var/log/cpu_usage.log
  sleep 5
done

