#!/bin/bash

echo "Symlinking theme file... This requires sudo privileges"
sudo ln ./duckster.zsh-theme ~/.oh-my-zsh/themes/duckster.zsh-theme

echo "Done, load the theme via your zshrc:"
echo "ZSH_THEME=\"duckster\""
