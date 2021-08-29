#!/bin/bash

function file_count() {
  local DIR=$1
  local NUMBER_OF_FILES

  NUMBER_OF_FILES=$(find "${DIR}"/ -maxdepth 1 -type f | wc -l)

  echo "${DIR}"
  echo "${NUMBER_OF_FILES}"
}

file_count /etc
