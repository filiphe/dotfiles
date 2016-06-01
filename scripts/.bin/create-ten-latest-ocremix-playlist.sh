#!/usr/bin/env bash

SOURCE_PLAYLIST_FILE=$1
TMP_PLAYLIST_FILE="/tmp/playlist"
OCREMIX_SINGLES_DIR="$HOME/media/music/OCREMIX/singles"

ls -lArt "$OCREMIX_SINGLES_DIR" | tail -n 10 | rev | cut -d ' ' -f 1 | rev | cut -d '*' -f 1 | tac > "$TMP_PLAYLIST_FILE"
sed -e 's#^#OCREMIX/singles/#' "$TMP_PLAYLIST_FILE" > "$SOURCE_PLAYLIST_FILE"
rm "$TMP_PLAYLIST_FILE"
