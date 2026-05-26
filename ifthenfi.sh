#!/bin/sh
if [ $# -eq 0 ]
then
	echo "usage: $0 argument" 1>&2
	exit 1
fi
echo Hi! $*
