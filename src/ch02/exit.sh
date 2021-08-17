#!/bin/bash

HOST="google.com"
if ! ping -c 1 $HOST; then
  echo "${HOST} is unreachable."
  exit 1
fi

exit 0
