#Generates navigation alias for bash, zsh and ranger
#Some problem with 

declare -A array
array[gr]='/run/media/lanaya'
array[gd]='/home/lanaya/Documents'
array[gh]='~'
array[gs]='~/Documents/Script'
array[gM]='/DriveE/Movies'
array[gm]='/DriveE/Music'
array[gw]='/DriveE/Pictures/Wallpapers'
array[gP]='/DriveE/Projects'
array[gO]='/DriveE/Xampp/htdocs/bakeryNew/bakery'
array[gH]='/DriveE/Xampp/htdocs/'
array[ggi]='/DriveE/Projects/Git/i3wm'
array[ggn]='/DriveE/Projects/Git/notes'
array[gp]='/DriveE/Pictures'
array[gD]='/DriveE/Backup/Downloads'
array[gE]='/DriveE/Backup/Program\ Files'
array[ge]='/DriveE'
array[gk]='/DriveKhelkud'
array[gN]='/DriveE/Projects/Notes/SemVII'
array[gn]='/DriveE/Projects/Notes/'

#For zshrc
line="142a"
sed -i '/^#Ranger/,/^#end/{/^#Ranger/!{/^#end/!d}}' ~/.zshrc #delete between #Ranger to #end
# The keys are accessed using an exclamation point: ${!array[@]}, the values are accessed using ${array[@]}.
for i in "${!array[@]}"
do
    echo "key  : $i"
    key=$i
    echo "value: ${array[$i]}"
    value="'${array[$i]}'"
    sed -i "$line alias $key=$value" ~/.zshrc
done

#For ranger
line="206a"
sed -i '/^#Ranger/,/^#end/{/^#Ranger/!{/^#end/!d}}' ~/.config/ranger/rc.conf 
for i in "${!array[@]}"
do
    key=$i
    value="${array[$i]}"
    sed -i "$line map $key cd $value" ~/.config/ranger/rc.conf 
done
