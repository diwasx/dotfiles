if mpc status | grep playing >/dev/null      # If mpd is playing
then
    mpc current
fi
