#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

printf "\n${GREEN}Creating a ~/.nvm folder...${NORMAL}\n"
cd ~
mkdir ~/.nvm


# Install NVM
printf "\n${YELLOW}Installing NVM...${NORMAL}\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.zshrc

nvm install --lts=Erbium # node 12
nvm install --lts=Fermium # node 14
nvm install --lts=Gallium # node 16
nvm alias default lts/gallium

npm i -g live-server yarn 

printf "\n${GREEN}Nodejs installed${NORMAL}\n"

source ~/.zshrc