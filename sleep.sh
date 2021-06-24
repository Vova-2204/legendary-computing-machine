#!/bin/bash
SECONDS=$1

for x in {1..$SECONDS}
do
  echo "Counting ${x}"
  sleep 1
done