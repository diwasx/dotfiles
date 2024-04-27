if spotifycli --playbackstatus | grep ▶ >/dev/null # If spotify is playing
then
    spotifycli --status
  
elif playerctl status | grep "Playing" >/dev/null # If youtube is playing
then
    playerctl metadata --format "{{ artist }} - {{ title }}"
fi

case $BLOCK_BUTTON in
    1) playerctl play-pause;;
    4) playerctl next;;
    5) playerctl previous;;
esac
