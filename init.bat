@echo off
echo Creating initialization files...

:: Create the output directory
if not exist odin-out (
    mkdir odin-out
    echo Created odin-out directory.
) else (
    echo odin-out directory already exists.
)

:: Create the current_exercist.txt file with "0"
echo 0 > current_exercise.txt

echo Initialization complete!
