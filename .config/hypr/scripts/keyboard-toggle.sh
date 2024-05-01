#!/usr/bin/env bash

export STATUS_FILE="$XDG_RUNTIME_DIR/keyboard.status"

enable_keyboard() {
    printf "true" >"$STATUS_FILE"
    notify-send -u normal "enabling keyboard"
    hyprctl keyword '$LAPTOP_KB_ENABLED' "true" -r
}

disable_keyboard() {
    printf "false" >"$STATUS_FILE"
    notify-send -u normal "disabling keyboard"
    hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
}

if ! [ -f "$STATUS_FILE" ]; then
  disable_keyboard
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_keyboard
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_keyboard
  fi
fi
