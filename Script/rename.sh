for i in *
do
    # echo $i | sed 's/^.*\(?token\).*$/.jpg/' #(^ begining of line, $ end of line)
    newfile=`echo $i | sed 's/?token.*/.jpg/'`  #(. is needed with asterik)
    # echo $newfile
    mv -i $i $newfile
done
