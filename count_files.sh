#!/bin/bash

# Check if directory path is provided
if [ -z "$1" ]; then
  echo "Usage: ./count_files.sh <absolute_directory_path>"
  exit 1
fi

# Check if it's a valid directory
if [ ! -d "$1" ]; then
  echo "'$1' is not a valid directory."
  exit 1
fi

# Count only files (not directories)
file_count=$(find "$1" -maxdepth 1 -type f | wc -l)
echo " Total number of files in '$1': $file_count"
