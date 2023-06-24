#!/bin/bash

if ! [ -d "$HOME/.tmux" ]; then
  # Install tpm
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

