#!/usr/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

brew update

# Install aws-cli tools (https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
printf "\n${YELLOW}Installing AWS CLI...${NORMAL}\n"
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
which aws
brew install aws-sam-cli
rm -rf AWSCLIV2.pkg
printf "\n${GREEN}AWS CLI installed${NORMAL}\n"

# Install Google gcp-cli tools (https://cloud.google.com/sdk/docs/install)
printf "\n${YELLOW}Installing Google GCP CLI...${NORMAL}\n"
brew install --cask google-cloud-sdk
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
printf "\n${GREEN}Google GCP CLI installed${NORMAL}\n"

# Install Azure cli tools (https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos)
printf "\n${YELLOW}Installing Azure CLI...${NORMAL}\n"
brew install azure-cli
printf "\n${GREEN}Azure CLI installed${NORMAL}\n"