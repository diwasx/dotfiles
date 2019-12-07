pacman -Qqen > /DriveE/Projects/Git/dotfiles/Backup/package_list/main
pacman -Qqem > /DriveE/Projects/Git/dotfiles/Backup/package_list/aur
pip list | sed 's/|/ /' | awk '{print $1, $8}' > /DriveE/Projects/Git/dotfiles/Backup/package_list/pip
echo "Packages list successfully generated"
