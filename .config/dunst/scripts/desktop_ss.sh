#!/bin/bash

# Set the directory to save the screenshot
save_dir="$HOME/Documents/screenshots"

# Create the directory if it doesn't exist
mkdir -p "$save_dir"

# Capture the screenshot using maim
screenshot_path="$save_dir/$(date +%s).png"

# Capture the screenshot
maim "$screenshot_path"

# Copy the screenshot image to the clipboard using xclip
xclip -selection clipboard -t image/png < "$screenshot_path"

# Display a notification using notify-send
notification_text="Screenshot captured and copied to clipboard"
notify-send -a "Screenshot Tool" "Screenshot Captured" "$notification_text"

