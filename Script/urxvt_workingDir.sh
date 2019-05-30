#!/bin/zsh

# Set and start urxvt in working directory

if [[ $1 == "set" ]]; then
    pwd | tee ~/.working_dir
elif [[ $1 == "start" ]]; then
    working_dir=`cat ~/.working_dir`
    urxvt -e /bin/zsh -c "cd $working_dir && /bin/zsh"
else
    echo "Use argument set or start"
fi

