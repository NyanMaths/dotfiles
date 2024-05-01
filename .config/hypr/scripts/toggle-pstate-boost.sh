#!/usr/bin/env bash

turbo_state=$(</sys/devices/system/cpu/intel_pstate/no_turbo)

if [[ $turbo_state -eq 1 ]] then
	pkexec echo "0" | pkexec tee /sys/devices/system/cpu/intel_pstate/no_turbo
	notify-send -u normal "turning on turbo boost"
else
	pkexec echo "1" | pkexec tee /sys/devices/system/cpu/intel_pstate/no_turbo
	notify-send -u normal "turning off turbo boost"
fi
