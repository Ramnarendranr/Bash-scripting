#!/bin/bash
# Find and delete files older than 30 days

find /path/to/directory -type f -mtime +30 -exec rm -f {} \;
echo "Old files deleted."

