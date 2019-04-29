ps cax | grep ncmpcpp > /dev/null
if [ $? -ne 0 ]; then
    urxvt -e ncmpcpp&
fi
