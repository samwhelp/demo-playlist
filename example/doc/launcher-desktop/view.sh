#!/usr/bin/env bash

THE_FILE_PATH="$HOME/Desktop/tv-news.desktop"

if [ ! -e "$THE_FILE_PATH" ]; then
	echo 'File Not Exist:' "$THE_FILE_PATH"
	echo
	exit 1
fi

ls "$THE_FILE_PATH" -l

echo

cat "$THE_FILE_PATH"
