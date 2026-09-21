#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	>&2 echo "Only a device name should be passed to this script"
	exit 1
fi


if ! grep "$1" <<< $(hyprctl devices) >> /dev/null
then
	>&2 echo "This device does not exist"
	exit 1
fi


if ! [ -d $XDG_CACHE_HOME/hyprland/disabled-devices ]
then
	mkdir -p $XDG_CACHE_HOME/hyprland/disabled-devices
fi

status_file="$XDG_CACHE_HOME/hyprland/disabled-devices/$1"

if [ -f "$status_file" ]; then
    rm "$status_file"
    hyprctl eval "hl.device({ name=\"$1\", enabled=true })"
else
    touch "$status_file"
    hyprctl eval "hl.device({ name=\"$1\", enabled=false })"
fi
