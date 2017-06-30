#!/bin/bash
read -p "Enter source directory: " src
read -p "Enter destination directory: " dest
read -p "Backup "$src" to "$dest" (y/n)? " answer
if [ "$answer"  == "y" ]; then
	rsync -avb --progress --delete --backup-dir="$dest"/deleted "$src" "$dest"
else
	echo "Not confirmed. Exiting..."
fi
