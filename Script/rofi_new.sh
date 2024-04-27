#!/usr/bin/env bash

source "$HOME/.cache/wal/colors.sh"

# rofi -font "DejaVu Sans Mono" -show run \
#      -color-window "$background, $background $color1" \
#      -color-normal "$background, $foreground, $background, $color1, $background" \
#      -color-active "$background, $foreground, $background, $color1, $background"

rofi -font "DejaVu Sans Mono" -show run -config /home/diwash/.config/rofi/config
