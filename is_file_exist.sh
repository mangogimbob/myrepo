#!/bin/sh

if [ "$1" = "" ]; then
	ls -l . | wc -l

elif [ ! -e "$1" ]; then
	echo "$1 does not exist."

elif [ -d "$1" ]; then
	ls -l "$1" | wc -l

else
	echo "$1 is not a directory."
fi
