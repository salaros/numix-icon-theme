#!/bin/bash

shopt -u dotglob
for file in source/*.png; do
	icon="$(basename $file)"
	for size in 256 128 96 64 32 24 22 16
	do
		convert -verbose -resize ${size}x${size} $file $size/apps/$icon
	done
done;


