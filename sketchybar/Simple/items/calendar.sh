#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                            icon.color=0xffff9cbe \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                          click_script="open -a Calendar"
