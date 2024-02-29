#!/bin/bash

# Function to increase brightness
increase_brightness() {
    local brightness=$1
    if [ $brightness -ge 33 ]; then
        echo $((brightness - 33))
    else
        echo 0
    fi
}

# Function to decrease brightness
decrease_brightness() {
    local brightness=$1
    if [ $brightness -ge 33 ]; then
        echo $((brightness - 33))
    else
        echo 0
    fi
}

# Check for the correct number of arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <+-value>"
    exit 1
fi

# Parse the argument
adjustment=$1
raw_adjustment=${1:1}

# Get the list of connected displays
displays=$(ddcutil detect)

# Check if the variable 'displays' contains the string "Laptop display"
if [[ $displays == *"Laptop display"* ]]; then
    echo "Adjusting brightness for laptop display"
    backlight_control $adjustment
fi

# Check if the adjustment starts with + or -
case $adjustment in
    +*) operation="increase";;
    -*) operation="decrease";;
    *)  echo "Usage: $0 <+-value>"; exit 1;;
esac


# Use awk to get real display numbers
display_list=$(echo "$displays" | awk '/^Display [0-9]/{print $2}')

# Adjust brightness for each display
while IFS= read -r display; do
    display_id=$(echo "$display" | awk '{print $1}')
    echo "Adjusting brightness for display $display_id"

    # Retrieve current brightness
    current_brightness=$(ddcutil getvcp --display "$display_id" 10 | awk -F= '/current value/{print $2}' | awk '{print $1}' | awk '{gsub(",", ""); print $1}')

    echo "Current brightness: $current_brightness"

    # Determine new brightness based on operation
    if [ "$operation" = "increase" ]; then
        new_brightness=$((current_brightness + raw_adjustment))
    elif [ "$operation" = "decrease" ]; then
        new_brightness=$((current_brightness - raw_adjustment))
    fi

    if [ "$new_brightness" -lt 0 ]; then
        new_brightness=0
    elif [ "$new_brightness" -gt 100 ]; then
        new_brightness=100
    fi

    echo "New brightness: $new_brightness"

    # Set the adjusted brightness
    ddcutil setvcp --display "$display_id" 10 "$new_brightness"
done <<< "$display_list"
