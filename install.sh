#!/usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons/"
  mkdir -p $DEST_DIR
fi

# Remove folder if existing
if [ -d "$DEST_DIR/Borealis-cursors" ]; then
  rm -rf "$DEST_DIR/Borealis-cursors"
fi
cp -r Borealis-cursors/ $DEST_DIR/Borealis-cursors

echo "Finished..."

