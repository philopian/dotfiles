#!/bin/zsh

export $(grep -v '^#' ../configs/.colors | xargs)


# Copy VS Code user settings
printf "${BLUE}Copying VS Code user settings...${NORMAL}\n\n"
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User
