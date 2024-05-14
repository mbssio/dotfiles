#!/bin/bash

LOCATION=$1
FILE=$2

# Get wttr.in
WTTR=$(curl -s "http://wttr.in/${LOCATION}?0?q?T")

# Print the entire content for debugging
#echo "$WTTR"

# Extract location using awk
LOCATION_NAME=$(echo "$WTTR" | awk 'NR==1 { print $1 }')

# Extract temperature using grep and awk
TEMP=$(echo "$WTTR" | grep -oE '[+-]?[0-9]+ ?\(.*\)? °C' | awk 'NR==1 { gsub(" ", ""); print $0 }')

#WEATHER_INFO="${TEMP} (${LOCATION_NAME})"
WEATHER_INFO="${TEMP}"
FILE_LOCATION="${HOME}/${FILE}"

echo "$WEATHER_INFO" > "$FILE_LOCATION"
