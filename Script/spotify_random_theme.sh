#!/bin/bash
# Apply random theme and starts spotify
# Use package from aur: spicetify-cli, spicetify-themes-git

theme_folder="/usr/share/spicetify-cli/Themes"
declare -a ignore_theme=("" "SpicetifyDefault" "Spicy" "WintergatanBlueprint")
random_theme=""

# Check if random_theme is in ignore_theme
while [[ " ${ignore_theme[@]} " =~ " ${random_theme} " ]]; do
    random_theme=`find $theme_folder -type d -printf '%d\t%P\n' | cut -f2- | tail -n +2 |shuf -n1`
    echo $random_theme
done

# Apply changes
spicetify config current_theme $random_theme
spicetify apply
