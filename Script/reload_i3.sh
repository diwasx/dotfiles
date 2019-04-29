# reload i3, compton and dropdown scratchpad

# i3-msg restart #Not good solution(compton bug)
pkill compton 
compton&
# Place dropdown to center
i3-msg "[title="dropdown"] scratchpad show; move position center"
# i3-msg "[title="noteDropdown"] scratchpad show; move position 500 0"

# Hide dropdown
i3-msg "[title="dropdown"] scratchpad show;"
# i3-msg "[title="noteDropdown"] scratchpad show;"
