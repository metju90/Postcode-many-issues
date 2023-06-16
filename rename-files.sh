#!/bin/bash

source_directory="./be/"

# Iterate over each file in the source directory with a .txt extension
for file in "$source_directory"*.txt; do
  # Check if the file exists and is a regular file
  if [[ -f "$file" ]]; then
    # Construct the new file name with the .js extension
    new_file="${file%.txt}.js"

    # Rename the file
    mv "$file" "$new_file"

    # Print a message to indicate the file has been renamed
    echo "Renamed $file to $new_file"
  fi
done
