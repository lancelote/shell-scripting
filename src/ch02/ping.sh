#!/bin/bash

HOST="google.com"

if ping -c 1 "${HOST}"; then
  echo "${HOST} is reachable."
else
  echo "${HOST} is unreachable."
fi
