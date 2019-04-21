# reload i3, compton and dropdown scratchpad

# i3-msg restart #Not good solution(compton bug)
pkill compton 
compton&
# Place dropdown to center
i3-msg "[title="dropdown"] scratchpad show; move position center"

# Hide dropdown
i3-msg "[title="dropdown"] scratchpad show;"
