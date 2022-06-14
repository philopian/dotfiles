#!/usr/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)

# Install XCode Command Line Tools
printf "\n${YELLOW}Installing XCode Command Line Tools...${NORMAL}\n"
xcode-select --install

# Install Homebrew and its packages
printf "\n${YELLOW}Installing home-brew...${NORMAL}\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"