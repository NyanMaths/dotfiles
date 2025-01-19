#!/usr/bin/env bash

pidof hyprlock || hyprlock --no-fade-in &
sleep 1
systemctl suspend
