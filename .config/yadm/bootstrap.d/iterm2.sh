#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then

  # possibly add something here to ensure iTerm2 is installed using Homebrew
  # cask like in the previous example

  if [ -d "$HOME/.iterm2" ]; then
    echo "Setting iTerm preference folder"
    # Specify the preferences directory
    defaults write com.googlecode.iterm2 PrefsCustomFolder "$HOME/.iterm2"
    # Tell iTerm2 to use the custom preferences in the directory
    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
  fi

fi
