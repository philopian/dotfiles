#!/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)


printf "\n${WHITE}==============================================================================
SETTING UP YOUR COMPUTER!
==============================================================================${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${YELLOW}Installing XCode Command Line Tools...${NORMAL}\n"
xcode-select --install

# Install Homebrew and its packages
printf "\n${YELLOW}Installing home-brew...${NORMAL}\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

zsh ./scripts/brew.sh
zsh ./scripts/shell.sh
zsh ./scripts/nodejs.sh
zsh ./scripts/vscode-settings.sh
zsh ./scripts/vscode.sh
zsh ./scripts/golang.sh
zsh ./scripts/open-dl-links.sh

printf "\n${BLUE}All DONE!${NORMAL}\n"