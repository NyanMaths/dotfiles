#!/usr/bin/env bash

pidof hyprlock || hyprlock --no-fade-in &
systemctl suspend

