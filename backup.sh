#!/bin/bash
# Backup a directory to a specified location

SOURCE_DIR="/path/to/source"
DEST_DIR="/path/to/destination"

rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"
echo "Backup completed successfully."

