#!/bin/bash
if spotifycli --playbackstatus | grep ▶ >/dev/null      # If spotify is playing
then
    spotifycli --status
  
fi
