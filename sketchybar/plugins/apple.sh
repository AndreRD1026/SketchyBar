#!/bin/sh

## If click de app, open a menu with the options:
## - Open system preferences
## - Open activity monitor
## - Open terminal
## - Open finder

if [ "$SENDER" = "apple.logo" ]; then
  case "$CLICK" in
    1) open /System/Applications/System\ Preferences.app ;;
    2) open /System/Applications/Utilities/Activity\ Monitor.app ;;
    3) open /System/Applications/Utilities/Terminal.app ;;
    4) open /System/Applications/Finder.app ;;
  esac
fi

