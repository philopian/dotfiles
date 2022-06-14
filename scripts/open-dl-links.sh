#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

printf "\n${GREEN}Open browser links...${NORMAL}\n"

open https://github.com/hamxiaoz/open-folder-with-vs-code