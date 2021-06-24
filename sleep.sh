#!/bin/bash

for (( x = 0 ; x <= $1 ; x++ ))
do
  echo "Counting ${x}"
  sleep 1
done