#!/usr/bin/env bash

echo "Creating initialization files..."

# Create the output directory
if [ ! -d "odin-out" ]; then
    mkdir -p odin-out
    echo "Created odin-out directory."
else
    echo "odin-out directory already exists."
fi

# Create the current_exercist.txt file with "0"
echo "0" > current_exercise.txt

echo "Initialization complete!"
