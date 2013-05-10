#!/bin/bash

secs_passed=100

#while true; do
#  battery="$(</sys/class/power_supply/BAT0/capacity)"
#  xsetroot -name "$battery% $(TZ=Australia/Sydney date)"
#  if [ $battery -lt 5 ]; then
#    if [ $secs_passed -gt 5 ]; then
#      notify-send -u critical '!!! WARNING LOW BATTERY !!!'
#      secs_passed=0
#    else
#      secs_passed=$((secs_passed+1))
#    fi
#  fi
#  sleep 2
#done &

hsetroot -center /usr/share/slim/themes/cosm/background.jpg

# TODO: xbindkeys transset-df and volume keys

exec i3 # -V > log
