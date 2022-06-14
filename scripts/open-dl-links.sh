#!/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)

printf "\n${GREEN}Open browser links...${NORMAL}\n"

open https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
open https://github.com/hamxiaoz/open-folder-with-vs-code