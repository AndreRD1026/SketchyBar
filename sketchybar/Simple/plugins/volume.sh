#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

OUTPUT=$(SwitchAudioSource -c)

if [ "$OUTPUT" = "AirPods de André" ]; then
  OUT="AirPods"
elif [ "$OUTPUT" = "Bocinas de MacBook Pro" ]; then
  OUT="MacBook"
else
  OUT="Other"
fi

if [ "$SENDER" = "volume_change" ]; then
  VOLUME=$INFO
  case $VOLUME in
    [6-9][0-9]|100)
    if [ "$OUT" = "AirPods" ]; then
      ICON="󱡏"
    elif [ "$OUT" = "MacBook" ]; then
      ICON="󰕾"
    else
      ICON="󰋋"
    fi
    ICON_COLOR=0xffa6da95
    ;;
    [3-5][0-9]) 
    if [ "$OUT" = "AirPods" ]; then
      ICON="󱡏"
    elif [ "$OUT" = "MacBook" ]; then
      ICON="󰕾"
    else
      ICON="󰋋"
    fi
    ICON_COLOR=0xffeed49f
    ;;
    [1-9]|[1-2][0-9]) 
    if [ "$OUT" = "AirPods" ]; then
      ICON="󱡏"
    elif [ "$OUT" = "MacBook" ]; then
      ICON="󰕿"
    else
      ICON="󰋋"
    fi
    ICON_COLOR=0xfff5a97f
    ;;
    *) 
    if [ "$OUT" = "AirPods" ]; then
      ICON="󱡐"
    elif [ "$OUT" = "MacBook" ]; then
      ICON="󰖁"
    else
      ICON="󰟎"
    fi
    ICON_COLOR=0xffee99a0
  esac

  sketchybar --set $NAME icon="$ICON" label="$VOLUME%" icon.color="${ICON_COLOR}"
fi
