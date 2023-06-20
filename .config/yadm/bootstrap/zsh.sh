#!/bin/bash

if ! [ -f "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]; then
  echo "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

