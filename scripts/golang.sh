#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)


# *NOTE: Since Go 1.5+ removed the C compiliers from the toolchain & replaced them with one written in Go, you need to have Go installed in order to insall GVM on your machine

printf "\n${YELLOW}Setting up Golang...${NORMAL}\n"

# Check to see if go is already installed
if ! command -v go >/dev/null; then
  printf "\n${YELLOW}Installing Golang with brew if not already installed...${NORMAL}\n"
  brew update && brew install go
fi

printf "\n${GREEN}Create go directories...${NORMAL}\n"
mkdir -p $HOME/go/{bin,src,pkg}


# Install GVM
printf "\n${YELLOW}Install GVM...${NORMAL}\n"
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm

# Reload settings
source ~/.zshrc

# Install v1.15 with gvm
printf "\n${YELLOW}Install v1.15 with gvm...${NORMAL}\n"
gvm install go1.15
gvm use go1.15 --default
go version
gvm list


# Install newer version with gvm
printf "\n${YELLOW}Install newer version with gvm...${NORMAL}\n"
gvm install go1.17.8
gvm use go1.17.8 --default
go version
gvm list


printf "\n${GREEN}Golang installed${NORMAL}\n"

# Reload settings
source ~/.zshrc