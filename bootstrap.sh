#!/usr/bin/env sh

echo "Installing a new machine? Nice!"
echo "Okay, lets do this. First things first, we need to install homebrew in order to get all the stuff you need"
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Now that we can brew, let's install fish (your friendly shell)"
#brew install fish
echo "Now that we have fish let's make it our default shell"
#chsh -s /usr/local/bin/fish

# HERE WE WILL START WITH THE ACTUALL INSTALLATION
git clone git@github.com:ecomba/osx-setup.git "$HOME/.osx_setup"
cd "$HOME/.osx_setup"
fish setup.fish
