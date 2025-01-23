#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p 110ps

# Loop through each file from HILLS.0 to HILLS.19
for i in {0..19}; do
    # Use head to extract the first 18 lines and save them in the new directory
    head -n 82 "HILLS.$i" > "110ps/HILLS.$i"
done

cd 110ps
cat HILLS.* > HILLS
cd ..

echo "Files processed and saved in the 10ps directory."

