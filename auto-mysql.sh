#!/bin/bash
# Backup a MySQL database

DB_NAME="my_database"
DB_USER="root"
DB_PASS="password"
BACKUP_DIR="/backups"

mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR"/"$DB_NAME"_$(date +%F).sql
echo "Database backup completed."

