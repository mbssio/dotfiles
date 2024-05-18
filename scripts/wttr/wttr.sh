#!/bin/bash

# Get location based on IP address
LOCATION=$(curl -s ipinfo.io | jq -r '.city')

FILE=$1

# Get wttr.in
WTTR=$(curl -s "http://wttr.in/${LOCATION}?0?q?T")

# Extract location using awk
LOCATION_NAME=$(echo "$WTTR" | awk 'NR==1 { print $1 }' | sed 's/,$//')

# Extract temperature(s) using grep and awk
TEMPS=$(echo "$WTTR" | grep -oE '[0-9]+ °C' | sed 's/[^0-9]*//g')

# Count the number of temperatures found
NUM_TEMPS=$(echo "$TEMPS" | wc -l)

# Assign the temperatures to TEMP1 and TEMP2
if [ "$NUM_TEMPS" -eq 1 ]; then
    TEMP1=$(echo "$TEMPS" | head -n1)
    TEMP2=$TEMP1
else
    TEMP1=$(echo "$TEMPS" | head -n1)
    TEMP2=$(echo "$TEMPS" | tail -n1)
fi

# Extract temperature scale
TEMP_SCALE=$(echo "$WTTR" | grep -oE '°(C|F)' | head -n1)

# Construct weather info string
WEATHER_INFO="${TEMP1}${TEMP_SCALE} (${LOCATION_NAME})"
FILE_LOCATION="${HOME}/${FILE}"

#echo "$WEATHER_INFO"
echo "$WEATHER_INFO" > "$FILE_LOCATION"
