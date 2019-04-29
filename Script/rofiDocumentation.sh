#!/bin/sh

cmd=$(echo -e "Python \nBash \nNodejs " | rofi -dmenu -font "System San Francisco Display 11" -p "Search Documentation")

# If 'Python' is selected
if (echo $cmd | grep -e Python);then
    query=`xsel -b | head -n 1`
    chromium "https://docs.python.org/3/library/$query.html"
fi

# If 'Bash' is selected
if (echo $cmd | grep -e Bash);then
    query=`xsel -b | head -n 1`
    chromium "http://manpages.ubuntu.com/manpages/precise/en/man1/$query.1.html"
fi

# If 'Nodejs' is selected
if (echo $cmd | grep -e Nodejs);then
    query=`xsel -b | head -n 1`
    chromium "https://www.npmjs.com/package/$query"
fi
