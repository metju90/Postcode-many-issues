#!/bin/bash

source_file="./be/index.js"

# Extract the directory path from the source file
destination_directory=$(dirname "$source_file")

# Define the number of iterations for the loop
num_iterations=420

# Start the loop
for ((i=1; i<=num_iterations; i++)); do
  # Create the new file name with the index appended
  new_file="${destination_directory}/new_file_${i}.txt"

  # Copy the source file to the destination directory with the new name
  cp "$source_file" "$new_file"

  # Print a message to indicate the file has been copied
  echo "Copied $source_file to $new_file"
done

