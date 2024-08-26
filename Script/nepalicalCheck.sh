
#Putting #!/bin/sh giving wrong condition
#Check if process is running. Return 0 if successfull else return 1
ps cax | grep nepalical > /dev/null 
if [ $? -eq 0 ]; then
    echo running
    killall nepalical
elif [ $? -eq 1 ]; then 
    echo "not running"
    nepalical&
fi

