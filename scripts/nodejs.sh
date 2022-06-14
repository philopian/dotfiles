#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

printf "\n${GREEN}Creating a ~/.nvm folder...${NORMAL}\n"
cd ~
mkdir ~/.nvm


# Install NVM
printf "\n${YELLOW}Installing NVM...${NORMAL}\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

source ~/.zshrc

nvm install node --lts
nvm alias default node
nvm install --lts=Erbium # node 12
nvm install --lts=Fermium # node 14

npm i -g live-server 

source ~/.zshrc