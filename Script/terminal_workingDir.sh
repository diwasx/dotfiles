#!/bin/zsh

# Set and start terminal in working directory
term="st"
if [[ $1 == "set" ]]; then
    pwd | tee ~/.working_dir
elif [[ $1 == "start" ]]; then
    working_dir=`cat ~/.working_dir`
    $term -e /bin/zsh -c "cd $working_dir && /bin/zsh"
else
    echo "Use argument set or start"
fi
