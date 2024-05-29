#!/bin/bash
# Schedule a cron job to run a script daily

CRON_JOB="0 2 * * * /path/to/script.sh"

(crontab -l ; echo "$CRON_JOB") | crontab -
echo "Cron job scheduled."

