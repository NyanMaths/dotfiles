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


if ! [ -f $XDG_CONFIG_HOME/hypr/$1.conf ]
then
	echo -e "device {\n\tname = $1\n\tenabled = false\n}" > $XDG_CONFIG_HOME/hypr/$1.conf
	echo -e "\nsource = $XDG_CONFIG_HOME/hypr/$1.conf" >> $XDG_CONFIG_HOME/hypr/custom.conf
elif grep "enabled = true" $XDG_CONFIG_HOME/hypr/$1.conf >> /dev/null
then
	echo -e "device {\n\tname = $1\n\tenabled = false\n}" > $XDG_CONFIG_HOME/hypr/$1.conf
else
	echo -e "device {\n\tname = $1\n\tenabled = true\n}" > $XDG_CONFIG_HOME/hypr/$1.conf
fi
