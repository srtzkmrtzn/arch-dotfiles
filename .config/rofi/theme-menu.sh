#!/usr/bin/env bash

THEME_SCRIPT="$HOME/.config/hypr/scripts/theme-switch.sh"

choice=$(printf "Cyan\nRed\nGreen\nPurple\nWhite/Reine" | rofi -dmenu -i -p "Theme" -theme "$HOME/.config/rofi/themes/hypr-settings.rasi")

case "$choice" in
  Cyan)
    "$THEME_SCRIPT" cyan
    ;;
  Red)
    "$THEME_SCRIPT" red
    ;;
  Green)
    "$THEME_SCRIPT" green
    ;;
  Purple)
    "$THEME_SCRIPT" purple
    ;;
  White/Reine)
    "$THEME_SCRIPT" white
    ;;
  *)
    exit 0
    ;;
esac
