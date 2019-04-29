# reload i3, compton and dropdown scratchpad

i3-msg restart #Not good solution(compton bug)
sleep 0.5

pkill compton 
compton&
