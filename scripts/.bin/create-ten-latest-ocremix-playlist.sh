#!/usr/bin/env bash

TARGET_PLAYLIST_FILE=$1
OCREMIX_SINGLES_DIR="$HOME/media/music/OCREMIX/singles"

# `find` all files in $OCREMIX_SINGLES_DIR and prepend timestamp
# `-type f` all regular files
# `-printf '%T@ %p\n'` print last modification-time in seconds since Epoch followed by filename and newline
# `sort` by the first field (timestamp in seconds) in reverse order
# take the 10 most recent and cut out the last three '/' seperated fields
# save in $TARGET_PLAYLIST_FILE
find "$OCREMIX_SINGLES_DIR" -type f -printf '%T@ %p\n' \
  | sort -k 1nr \
  | head -n 10 | rev | cut -d '/' -f -3 | rev > "$TARGET_PLAYLIST_FILE"
