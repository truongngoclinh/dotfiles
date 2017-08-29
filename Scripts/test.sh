#!/bin/bash

now="$(date +%d/%m/%Y)"

echo "date is: \x1B[0;33m $now and \x1B[0m no color"


echo 'Hello World!' | sed $'s/World/\e[1m&\e[33m/' 


