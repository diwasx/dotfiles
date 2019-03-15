#!/bin/sh

cmd=$(echo -e "Google \nYoutube \nPiratebay \nFacebook \nGithub " | rofi -dmenu -p Search)

# If 'Google' is selected
if (echo $cmd | grep -e Google);then
    query=`echo $cmd | cut -d' ' -f2- ` #Delete first word
    chromium "https://www.google.com.np/search?q=$query"
fi

# If 'Youtube' is selected
if (echo $cmd | grep -e Youtube);then
    query=`echo $cmd | cut -d' ' -f2- ` 
    chromium "https://www.youtube.com/results?search_query=$query"
fi

# If 'Piratebay' is selected
if (echo $cmd | grep -e Piratebay);then
    query=`echo $cmd | cut -d' ' -f2- ` 
    chromium "https://thepiratebay.org/search/$query"
fi

# If 'Facebook' is selected
if (echo $cmd | grep -e Facebook);then
    query=`echo $cmd | cut -d' ' -f2- ` 
    chromium "https://www.facebook.com/search/top/?q=$query"
fi

# If 'Github' is selected
if (echo $cmd | grep -e Github);then
    query=`echo $cmd | cut -d' ' -f2- ` 
    chromium "https://github.com/search?q=$query"
fi
