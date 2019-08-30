#!/bin/bash

THEME_NAME="duckster.zsh-theme"
THEME_PATH="$ZSH_CUSTOM/themes"

echo "Linking theme file..."
echo "$THEME_NAME -> $THEME_PATH/$THEME_NAME"
ln "./$THEME_NAME" "$THEME_PATH/$THEME_NAME"

echo -e "\nDone, load the theme via your zshrc:"
echo "ZSH_THEME=\"duckster\""
