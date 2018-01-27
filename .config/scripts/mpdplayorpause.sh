#!/bin/sh

if mpc status | grep playing >/dev/null      # If mpd is playing
then
 mpc pause
else
	mpc play
fi

