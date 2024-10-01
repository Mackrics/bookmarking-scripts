#!/bin/sh

URL=$(wl-paste)
DESCRIPTION=$(fuzzel --dmenu --lines=0 --prompt "Bookmark name: ")

if [[ $DESCRIPTION == "" ]] ; then
	echo "No description entered... Exiting"
else
	echo "Adding item to read later list!"
	echo "- [$DESCRIPTION]($URL)" >> ~/zettelkasten/index.md
fi
