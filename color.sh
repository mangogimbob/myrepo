#!/bin/sh
i=0
for color in red green blue white black "dark green"
do
	echo color $1 : $color
	i = expr $1 + 1
done
