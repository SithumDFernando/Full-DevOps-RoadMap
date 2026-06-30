#!/bin/bash
# Backs up a given folder to a destination with a timestamp

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

SOURCE=$1
DEST=$2
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Source folder '$SOURCE' does not exist."
    exit 1
fi

if [ ! -d "$DEST" ]; then
    echo "Error: Destination folder '$DEST' does not exist."
    exit 1
fi

echo "Backing up $SOURCE to $DEST/$ARCHIVE_NAME ..."
tar -czf "$DEST/$ARCHIVE_NAME" -C "$SOURCE" .

if [ $? -eq 0 ]; then
    echo "Backup successful!"
else
    echo "Backup failed!"
    exit 1
fi
