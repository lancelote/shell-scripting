#!/bin/bash

LOCATION=$1

if [ -f "${LOCATION}" ]; then
  echo "Regular file"
elif [ -d "${LOCATION}" ]; then
  echo "Directory"
else
  echo "Something else"
fi

ls -l "${LOCATION}"
