#!/usr/bin/env python3
import os
import sys

def rename_files_with_zero_prefix(directory):
    """
    Adds a '0' prefix to all filenames in the specified directory.
    
    Args:
        directory (str): Path to the directory containing files to rename
    """
    # Check if directory exists
    if not os.path.isdir(directory):
        print(f"Error: The directory '{directory}' does not exist.")
        return False
    
    # Get all files in the directory
    try:
        files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]
    except Exception as e:
        print(f"Error accessing directory: {e}")
        return False
    
    # Count how many files were renamed
    renamed_count = 0
    
    # Rename each file
    for filename in files:
        
        old_path = os.path.join(directory, filename)
        new_filename = '0' + filename
        new_path = os.path.join(directory, new_filename)
        
        try:
            os.rename(old_path, new_path)
            print(f"Renamed: '{filename}' → '{new_filename}'")
            renamed_count += 1
        except Exception as e:
            print(f"Error renaming '{filename}': {e}")
    
    print(f"\nCompleted: {renamed_count} files were renamed.")
    return True

if __name__ == "__main__":
    # Check if directory argument was provided
    if len(sys.argv) != 2:
        print("Usage: python rename_files.py <directory_path>")
        sys.exit(1)
    
    directory_path = sys.argv[1]
    rename_files_with_zero_prefix(directory_path)
