#!/bin/bash

read -rp "File or directory: " LOCATION

if [ -f "$LOCATION" ]; then
  echo "${LOCATION} is a file."
  exit 0
elif [ -d "$LOCATION" ]; then
  echo "${LOCATION} is a directory."
  exit 1
else
  echo "${LOCATION} is something other."
  exit 2
fi
