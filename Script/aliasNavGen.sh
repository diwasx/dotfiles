#Generates navigation alias for bash, zsh and ranger

declare -A array
array[gr]='/run/media/lanaya'
array[gd]='/home/lanaya/Documents'
array[gh]='~'
array[gc]='~/.config'
array[gt]='~/.trash'
array[gs]='~/Documents/Script'
array[gM]='/DriveE/Movies'
array[gm]='/DriveE/Music'
array[gw]='/DriveE/Pictures/Wallpapers'
array[gW]='~/.wine/drive_c/'
array[gP]='/DriveE/Projects'
array[gH]='/DriveE/Xampp/htdocs/'
array[gbb]='/DriveE/Projects/Git/'
array[gbi]='/DriveE/Projects/Git/dotfiles'
array[gbn]='/DriveE/Projects/Git/notes'
array[gbs]='/DriveE/Projects/Git/suckless'
array[gp]='/DriveE/Pictures'
array[gv]='/DriveE/Videos'
array[gV]='/VirtualDrive'
array[gD]='/DriveE/Backup/Downloads'
array[gE]='/DriveE/Backup/Program\ Files'
array[ge]='/DriveE'
array[gk]='/DriveKhelkud'
array[gf]='/FastDrive'
array[gN]='/DriveE/Projects/Notes/SemVIII'
array[gn]='/DriveE/Projects/Notes/'
array[gib]='/usr/lib/i3blocks/'
# array[gO]='/DriveE/Xampp/htdocs/p5js/neuro_evolution/'
array[gO]="`cat ~/.working_dir`"

#For zshrc
# line="142a"
sed -i '/^#Ranger/,/^#end/{/^#Ranger/!{/^#end/!d}}' ~/.zshrc #delete between #Ranger to #end
# The keys are accessed using an exclamation point: ${!array[@]}, the values are accessed using ${array[@]}.
for i in "${!array[@]}"
do
    echo "key  : $i"
    key=$i
    echo "value: ${array[$i]}"
    value="'${array[$i]}'"
    # sed -i "$line alias $key=$value" ~/.zshrc  #Not a good practise because line number is not static
    # command="alias $key=$value"
    sed -i "/#Ranger alias/a alias $key=$value" ~/.zshrc  #Alway use double quote when using variable

done

#For ranger
# line="206a"
# sed -i '/^#Ranger/,/^#end/{/^#Ranger/!{/^#end/!d}}' ~/.config/ranger/rc.conf 
sed -i '/^#Ranger/,/^#end/{
    /^#Ranger/!{
        /^#end/!d
    }
}' ~/.config/ranger/rc.conf 
for i in "${!array[@]}"
do
    key=$i
    value="${array[$i]}"
    # sed -i "$line map $key cd $value" ~/.config/ranger/rc.conf 
    sed -i "/#Ranger alias/a map $key cd $value" ~/.config/ranger/rc.conf
done
