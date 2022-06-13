# Dotfiles

## Overview

<details>
<summary>Homebrew Packages</summary>

  - golang
  - jq
  - tree
  - watchman
  - zsh
  - zsh-completions
  - zsh-syntax-highlighting
  - warrensbox/tap/tfswitch
  - aws-sam-cli
  - appcleaner
  - brave-browser
  - clipy
  - cocoapods
  - docker
  - figma
  - google-chrome
  - hyper
  - pgadmin4
  - postman
  - rectangle
  - visual-studio-code
</details>



<details>
<summary>Optional Homebrew Packages</summary>

  - google-earth-pro
  - libreoffice
  - macpass
  - powerphotos
  - qgis
  - ytmdesktop-youtube-music
  - zoom
</details>




<details>
<summary>Shell setup</summary>

- Use the zsh shell
- Oh-my-zsh
- Set default git branch to `main`
</details>






<details>
<summary>Programming setup</summary>

- vscode & extensions
- nodejs via nvm
- golang and gvm
  <details>
  <summary>Golang setup with vscode</summary>

  - Update VSCode so that it know where the `go.path` is 
    ```json
    {
      "go.gopath": "~/go"
    }
    ```
  - Setup Go with VSCode
    - Install the vscode extension `golang.go`
    - [command][shift][p] > Go:Instal/Update, select all
    - This will download all the packages to your `go.path`
    - VS Code Go extension now enables the `gopls` language server by default
    - `gopls` provides IDE features, such as as intelligent autocompletion, signature help, refactoring, and workspace symbol search.


  </details>

</details>











## Initial setup
1. Clone this repo to your root directory
  - [Manually](https://github.com/philopian/dotfiles/archive/refs/heads/main.zip)
  - If you have Git already installed:
    ```
    $ cd ~
    $ git clone https://github.com/philopian/dotfiles.git
    ```
2. Update the `configs/.git-user` with your username/email
3. Run software updates
  - Make sure that everything is up to date
4. Run the `init.sh` script


## Optional homebrew installs
 - Run the `update.sh` script

## Update (shell, homebrew & vscode)
 - Run the `update.sh` script

