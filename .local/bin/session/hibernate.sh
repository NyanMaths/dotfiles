#!/usr/bin/env bash

pidof hyprlock || hyprlock &
systemctl hibernate
