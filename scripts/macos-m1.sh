# Why Rosetta?? Apple's translation layer Rosetta 2, we can easily download and compile applications that were built for x86_64 and run them on Apple Silicon
open https://www.courier.com/blog/tips-and-tricks-to-setup-your-apple-m1-for-development/

# 1. Install rosetta
softwareupdate --install-rosetta --agree-to-license
# 2. Create a `Terminal-Rosetta.app` (duplicate the `Application/Utilities/Terminal.app` and call it `Application/Utilities/Terminal-Rosetta.app`, > right-click > `Get Info` > check `Open using Rosetta`,)
# 3. Install nvm with the Rosetta Terminal (`$ arch` should print out `i386` when in Rosetta mode and `arm64` on your M1 version)
#   `$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash`
# 4. From now on you will have to install all version of node via nvm and the `Application/Utilities/Terminal-Rosetta.app`  