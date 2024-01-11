#!/bin/bash

sketchybar    --add item apple.logo left                            \
            --set apple.logo icon=􀣺                                 \
                            icon.color=$ACCENT_COLOR                \
                            icon.padding_left=4                     \
                            label.drawing=off                       \
                            background.drawing=off                  \
                            click_script="$PLUGIN_DIR/apple.sh"