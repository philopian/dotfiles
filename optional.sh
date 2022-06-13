#!/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)


printf "\n${WHITE}==============================================================================
Optional installs!
==============================================================================${NORMAL}\n"

zsh ./scripts/brew-optional.sh

printf "\n${BLUE}All DONE!${NORMAL}\n"