#!/bin/sh

#Play link from clipboard (register +) in mpv
mpv $(xsel -b | head -n 1)
