#!/bin/bash

hsetroot -center /usr/share/slim/themes/cosm/background.jpg

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

xset -b # turn off beep

xcompmgr &
pidgin &
skype &

export TZ='Europe/Amsterdam'

exec i3 # -V > log
