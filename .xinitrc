#!/bin/bash

hsetroot -center /usr/share/slim/themes/cosm/background.jpg

xcompmgr &

exec i3 # -V > log
