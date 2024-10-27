#!usr/bin/env bash

echo "Initializing shell environment"

if [[ "$OSTYPE" = "darwin"* ]]; then
  echo "MacOS found"
  if [[ ! -f "/opt/homebrew/bin/brew" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  /opt/homebrew/bin/brew install zsh
  /opt/homebrew/bin/brew install go-task
  /opt/homebrew/bin/brew install stow

  if [[ $(uname -m) == 'arm64' ]]; then
    echo "M1 CPU detected"
    SHELL_COMMAND="sudo chsh -s $(which zsh)"
  else
    echo "Intel CPU detected"
    if [[ $(sw_vers -productVersion | awk -F. '{print $2}') -le 13 ]]; then
      echo "MacOS High Sierra or older detected"
      SHELL_COMMAND="sudo chsh -s /bin/zsh"
    else
      echo "MacOS Mojave or newer detected"
      SHELL_COMMAND="sudo chsh -s /usr/local/bin/zsh"
    fi
  fi

  if $SHELL_COMMAND; then
    echo "Shell changed to zsh successfully"
  else
    echo "Failed to change shell to zsh" >&2
    exit 1
  fi
else
  echo "Linux found"
  # TODO: Add Linux setup
  exit 1
fi

echo "Applying Dotfiles"
task apply
echo "Dotfiles applied"
zsh
