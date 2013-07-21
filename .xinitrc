#!/bin/bash

hsetroot -center /usr/share/slim/themes/cosm/background.jpg

xset -b # turn off beep

export TZ='USA/Eastern'

exec i3 # -V > log
