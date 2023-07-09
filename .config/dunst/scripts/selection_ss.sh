#!/bin/bash

# Set the directory to save the screenshot
save_dir="$HOME/Documents/screenshots"

# Create the directory if it doesn't exist
mkdir -p "$save_dir"

# Set the screenshot sound file path
screenshot_sound="$HOME/.config/dunst/scripts/sound/captured.wav"

# Set the screenshot sound volume (0.0 - 1.0)
#screenshot_sound_volume=0.5

# Capture the screenshot using maim
screenshot_path="$save_dir/screenshot.png"

# Play the sound before capturing the screenshot
#paplay --volume="$screenshot_sound_volume" "$screenshot_sound"
paplay "$screenshot_sound"

# Capture the screenshot
maim -s "$screenshot_path"

# Copy the screenshot image to the clipboard using xclip
xclip -selection clipboard -t image/png < "$screenshot_path"

# Display a notification using notify-send
notification_text="Screenshot captured and copied to clipboard"
notify-send -a "Screenshot Tool" "Screenshot Captured" "$notification_text"

