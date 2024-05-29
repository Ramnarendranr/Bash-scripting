#!/bin/bash
# Display system information

echo "System Information:"
echo "--------------------"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Memory Usage: $(free -h)"
echo "Disk Usage: $(df -h)"
echo "CPU Load: $(top -bn1 | grep "load average:" | awk '{print $10 $11 $12}')"

