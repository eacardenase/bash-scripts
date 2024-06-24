#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR does not exist."
    exit 1
fi

for FILE in "$DIR"/*; do
    if [ -f "$FILE" ]; then
        BASENAME=$(basename "$FILE")
        LOWERCASE=$(echo "$BASENAME" | tr '[:upper:]' '[:lower:]')
        mv "$FILE" "$DIR/$LOWERCASE"
    fi
done

echo "All files in $DIR have been renamed to lowercase."
