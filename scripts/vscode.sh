#!/bin/zsh

export $(grep -v '^#' ../configs/.colors | xargs)

# Install vscode extensions from the list in extensions.txt
printf "${BLUE}Installing VS Code extensions...${NORMAL}\n"
if test $(which code); then
  filename="./vscode/extensions"
  while read -r line;
  do
    printf "${YELLOW}Installing VS Code extension %s...${NORMAL}\n" "$line"
    code --install-extension $line > /dev/null
    sleep 0.5
  done < "$filename"
fi