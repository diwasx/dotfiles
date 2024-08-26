#Syntax save
i3-save-tree --workspace "1. Terminal" > ~/.config/i3/layout/terminal.json
i3-save-tree --workspace "2. Web" > ~/.config/i3/layout/coding.json
i3-save-tree --workspace 4 > ~/.config/i3/layout/test.json

#Syntax append
i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/terminal.json"
i3-msg "workspace 2. Web; append_layout ~/.config/i3/layout/coding.json"
i3-msg "workspace 4; append_layout ~/.config/i3/layout/test.json"

#Coding-music
i3-save-tree --workspace "1. Terminal" > ~/.config/i3/layout/coding-music.json
i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/coding-music.json"
