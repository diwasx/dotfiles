#!/bin/bash

# convert $@ -resize 50% $@
convert $@ -resize 2560x1440 $@
# convert $@ -resize 1920x1080 $@
# convert $@ -quality 80 aa.jpg
