#!/bin/bash

nowDate="$(date +%d/%m/%Y)"
nowHours="$(date +%T)"

#echo "date is: \x1B[0;33m $nowDate - $nowHours" + "h" + "/$nowMinutes" + "m and \x1B[0m no color"
echo "date is: \x1B[0;33m $nowDate - $nowHours \x1B[0m no color"


echo 'Hello World!' | sed $'s/World/\e[1m&\e[33m/' 


