#!/bin/bash

export $(grep -v '^#' .colors | xargs)


printf "\n${YELLOW}==============================================================================
UPDATING Configs
==============================================================================${NORMAL}\n"


printf "${BLUE}Overide `~/.zshrc` with `~/dotfiles/zshrc`...${NORMAL}\n"
cp ~/dotfiles/zshrc $HOME/.zshrc
source ~/.zshrc


# Install vscode extensions from the list in extensions.txt
printf "${BLUE}Installing VS Code extensions...${NORMAL}\n"

if test $(which code); then
  filename="./vscode/extensions"
  while read -r line;
  do
    printf "${YELLOW}Installing VS Code extension %s...${NORMAL}\n" "$line"
    code --install-extension $line > /dev/null
  done < "$filename"
fi