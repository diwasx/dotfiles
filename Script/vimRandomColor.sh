#!/bin/bash

#Path of collection of color
folder="$HOME/.vim/bundle/awesome-vim-colorschemes/colors"

#Select random filename and remove '.vim' from it
file=`find $folder -type f -printf "%f\n"|shuf -n1| sed 's/.vim//'`
notify-send "Random colorscheme for vim applied > $file"

# Delete between scriptStart and scriptEnd
sed -i '/^"scriptStart/,/^"scriptEnd/{/^"scriptStart/!{/^"scriptEnd/!d}}' ~/.vimrc

# Append filename $file in between
sed -i "/\"scriptStart/a colorscheme $file" ~/.vimrc


