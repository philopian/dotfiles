#!/usr/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

# Install XCode Command Line Tools
printf "\n${YELLOW}Installing XCode Command Line Tools...${NORMAL}\n"
xcode-select --install
printf "\n${GREEN}XCode Command Line Tools installed${NORMAL}\n"


# Install Homebrew and its packages
printf "\n${YELLOW}Installing home-brew...${NORMAL}\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
printf "\n${GREEN}Homebrew installed${NORMAL}\n"