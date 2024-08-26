# Search man by keyword, pipe it to rofi, get only first word and open its man
man -k . | rofi -dmenu -i -l 40 | sed 's/\s.*$//' | xargs man 
man `man -k . | rofi -dmenu -i -l 40 | sed 's/\s.*$//'`

# Search man by keyword, pipe it to rofi, get only first word and convert to pdf for and pass it to zathuro
man -k . | rofi -dmenu -i -l 40 | sed 's/\s.*$//' | xargs man -Tpdf | zathura -
