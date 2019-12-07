if spotifycli --playbackstatus | grep ▶ >/dev/null      # If spotify is playing
then
    spotifycli --status
  
fi

case $BLOCK_BUTTON in
    1) spotifycli --playpause;;
    4) spotifycli --next;;
    5) spotifycli --prev;;
esac
