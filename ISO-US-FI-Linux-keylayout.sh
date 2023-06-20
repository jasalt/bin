#!/bin/bash

# Custom "US-FIN" keyboard layout to be used with physical ISO style keyboards with extra key next to left shift (<>|) which maps Finnish ä and ö letters to it (producing former with shift modifier).

## Known Issues:
# - Capital ä and ö letters not supported. Shortcut C-b C-c on Emacs is usable workaround when writing moderate amounts of text in Finnish.
# - Physical key labels are incorrect for other keys than ones producing regular a-z letters.
# - Only X11 compatible, no Wayland support yet

## Maybe upcoming features (pull requests are welcome)
# - Map modifiers with a and o letters to be able to use capital letters
# - More solid implementation using "native" keymap or something
# - Wayland support

## To Install:
# Setup system with US keylayout default to most distributions.
# Run this script to test it out. It resets after sleep or reboot.
# To make it permanent, set it as login script through desktop environment settings, .zprofile or something.

xmodmap -e 'keycode 94 = adiaeresis odiaeresis Adiaeresis Odiaeresis'
