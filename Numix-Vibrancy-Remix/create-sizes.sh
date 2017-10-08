#!/bin/bash

shopt -u dotglob

for size in 256 128 96 64 32 24 22 16; do
	# Resize icons and copy resized icons to "size" folders
	for file in source/*.png; do
		icon="$(basename $file)"
		convert -verbose -resize ${size}x${size} $file $size/apps/$icon
	done;
	
	
	# Copy symlinks to each "size" folder
	for symlink in source/*.sym; do
		filename="${symlink%.*}"
		filename="$(basename $filename)"
		rm -rfv $size/apps/$filename
		cp -Pv $symlink $size/apps/$filename
	done;

done
