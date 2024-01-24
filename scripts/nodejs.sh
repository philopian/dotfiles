#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

printf "\n${GREEN}Creating a ~/.nvm folder...${NORMAL}\n"
cd ~
mkdir ~/.nvm


# Install NVM
printf "\n${YELLOW}Installing NVM...${NORMAL}\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.39.1/install.sh | bash
source ~/.zshrc

nvm install --lts=Gallium # node 16
nvm install --lts=Iron # node 20
nvm alias default lts/Iron

npm i -g live-server yarn 
npm i -g pnpm 
brew install corepack

printf "\n${GREEN}Nodejs installed${NORMAL}\n"

source ~/.zshrc