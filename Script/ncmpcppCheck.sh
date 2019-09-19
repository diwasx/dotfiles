ps cax | grep ncmpcpp > /dev/null
if [ $? -ne 0 ]; then
    st -e ncmpcpp&
fi
