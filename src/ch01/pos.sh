#!/bin/bash

echo "Executing script: $0"
echo "First user: $1"

for USER in "$@"; do
  echo "For a user: ${USER}"
done
