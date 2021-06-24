#!/bin/bash
SECONDS=$1

for (( x = 0 ; x <= $SECONDS ; x++ ))
do
  echo "Counting ${x}"
  sleep 1
done