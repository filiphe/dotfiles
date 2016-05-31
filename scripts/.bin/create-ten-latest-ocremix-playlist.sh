#!/usr/bin/env bash

SOURCE_PLAYLIST_FILE=$1
OCREMIX_SINGLES_DIR="$HOME/media/music/OCREMIX/singles"

ls -lArt "$OCREMIX_SINGLES_DIR" | tail -n 10 | rev | cut -d ' ' -f 1 | rev | cut -d '*' -f 1 > "$SOURCE_PLAYLIST_FILE"

