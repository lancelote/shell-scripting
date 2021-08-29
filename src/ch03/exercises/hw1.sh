#!/bin/bash

function file_count() {
  local NUMBER_OF_FILES
  NUMBER_OF_FILES=$(find . -maxdepth 1 -type f | wc -l)
  echo "${NUMBER_OF_FILES}"
}

file_count
