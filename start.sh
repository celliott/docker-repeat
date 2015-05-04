#!/bin/bash

set -u
set -e

while true; do
    sleep 5
    NOW=$(TZ=America/New_York date +"%m-%d-%Y %r")
    echo "Current date and time is $NOW EST" 
done

