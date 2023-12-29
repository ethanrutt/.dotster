#!/bin/bash

# cmd to get rid of all symbolic links in home directory
# find ~ -maxdepth 1 -type l -delete

directory="$(pwd)/ubuntu"
echo "$directory"

for file in $directory/.*; do
	stripped_file="$(basename $file)"

	# don't want to link . and .. directories
	if [ $stripped_file != "." ] && [ $stripped_file != ".." ]; then
		ln -s "$file" ~
	fi
done

