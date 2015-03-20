#!/usr/bin/env sh

echo "Installing a new machine? Nice!"

if ! command -v brew > /dev/null 2>&1; then
  echo "Okay, lets do this. First things first, we need to install homebrew in order to get all the stuff you need"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew was already available... skipping"
fi

if ! command -v fish > /dev/null 2>&1 ; then
  echo "Now that we can brew, let's install fish (your friendly shell)"
  brew install fish
  echo "Now that we have fish let's make it our default shell"
  chsh -s /usr/local/bin/fish
else
  echo "Fish already installed! Nice one!"
fi

# HERE WE WILL START WITH THE ACTUALL INSTALLATION
git clone git@github.com:ecomba/osx-setup.git "$HOME/.osx-setup"
cd "$HOME/.osx-setup"
fish setup.fish
