#!/bin/bash
# dictionary word lookups

# get the current primary selection
word=$(wl-paste --primary --no-newline)

# fetch the definition using dict
definition=$(dict "$word" | sed -n '/^[0-9]/,$p')

# check if a definition was found
if [[ -z "$definition" ]]; then
    notify-send "No definition found for: $word"
else
    # truncate the definition to avoid overly long notifications
    short_def=$(echo "$definition" | head -n 20)

    # display the definition using notify-send (which works with mako)
    notify-send "Definition of $word" "$short_def"
fi


