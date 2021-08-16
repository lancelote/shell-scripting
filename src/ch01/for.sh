#!/bin/bash

for COLOR in red green blue; do
  echo "COLOR: ${COLOR}"
done

COLORS="red green blue"

for COLOR2 in $COLORS; do
  echo "COLOR2: ${COLOR2}"
done

PICTURES=$(ls ./*jpg)
DATE=$(date+%F)

for PICTURE in $PICTURES; do
  echo "Renaming ${PICTURES} to ${DATE}-${PICTURE}"
  mv "${PICTURE}" "${DATE}-${PICTURE}"
done
