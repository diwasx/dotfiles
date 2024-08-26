if mpc status | grep playing >/dev/null      # If mpd is playing
then
    mpc current
    pkill -RTMIN+12 i3blocks
fi

case $BLOCK_BUTTON in
  1) mpc toggle;;
  4) mpc next;;
  5) mpc prev;;
esac
