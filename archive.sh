#!/bin/bash
# Archive log files older than 7 days

LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/archive"

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec mv {} "$ARCHIVE_DIR" \;
gzip "$ARCHIVE_DIR"/*.log
echo "Log files archived."

