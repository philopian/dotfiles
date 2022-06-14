#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)


printf "\n${WHITE}==============================================================================
Optional installs!
==============================================================================${NORMAL}\n"

zsh ./scripts/brew-optional.sh

printf "\n${BLUE}All DONE!${NORMAL}\n"