# Dotfiles

## Overview
<details>
<summary>Homebrew Packages</summary>

- go
- jq
- tree
- watchman
- zsh
- zsh-completions
- zsh-syntax-highlighting
- appcleaner
- brave-browser
- clipy
- cocoapods
- docker
- figma
- google-chrome
- google-earth-pro
- hyper
- libreoffice
- macpass
- pgadmin4
- postman
- powerphotos
- rectangle
- visual-studio-code
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
1. Run software updates
  - Make sure that everything is up to date
2. Install Xcode
  - Install Xcode with thee Apple App Store
3. Run the `init.sh` script


## Update
 - Run the `update.sh` script

