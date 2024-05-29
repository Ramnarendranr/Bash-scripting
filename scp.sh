#!/bin/bash
# Transfer a file to a remote server

REMOTE_USER="user"
REMOTE_HOST="example.com"
REMOTE_PATH="/path/to/destination"
LOCAL_FILE="/path/to/file"

scp "$LOCAL_FILE" "$REMOTE_USER"@"$REMOTE_HOST":"$REMOTE_PATH"
echo "File transferred to $REMOTE_HOST."

