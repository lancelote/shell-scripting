#!/bin/bash

function backup_file() {
  # This function creates a backup of a file.
  if [ -f "$1" ]; then
    local BACKUP_FILE
    local ORIG_FILE_NAME

    ORIG_FILE_NAME=$(basename "${1}")
    CURRENT_DATE=$(date +%F)
    PID=$$

    BACKUP_FILE="/var/tmp/${ORIG_FILE_NAME}.${CURRENT_DATE}.${PID}"

    echo "Backing up $1 to ${BACKUP_FILE}"
    cp "$1" "$BACKUP_FILE"
  else
    return 1
  fi
}

if backup_file /etc/hosts; then
  echo "Backup succeeded!"
else
  echo "Backup failed!"
  exit 1
fi
