#!/bin/zsh

export $(grep -v '^#' .colors | xargs)


printf "\n${WHITE}==============================================================================
SETTING UP YOUR COMPUTER!
==============================================================================${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${YELLOW}Installing XCode Command Line Tools...${NORMAL}\n"
xcode-select --install

# Install Homebrew and its packages
printf "\n${YELLOW}Installing home-brew...${NORMAL}\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

zsh ./.brew
zsh ./.shell
zsh ./.nodejs
zsh ./.vscode
zsh ./.open-dl-links

printf "\n${BLUE}All DONE!${NORMAL}\n"