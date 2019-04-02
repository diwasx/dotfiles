# reload i3, compton and dropdown scratchpad

# i3-msg restart #Not good solution(compton bug)
pkill compton 
compton&
i3-msg "[title="dropdown"] scratchpad show; move position center"
