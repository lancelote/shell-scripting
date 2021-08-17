#!/bin/bash

if cat /etc/shadow; then
  echo "Command succeeded."
  exit 0
else
  echo "Command failed."
  exit 1
fi
