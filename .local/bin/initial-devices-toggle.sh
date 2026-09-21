#!/usr/bin/env bash


devices_cache_dir="$XDG_CACHE_HOME/hyprland/disabled-devices"

if ! [ -d $devices_cache_dir ]
then
	exit 0
fi


cd "$devices_cache_dir"

for device in *; do
	 hyprctl eval "hl.device({ name=\"$device\", enabled=false })"
done
