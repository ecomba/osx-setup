#!/usr/bin/env sh

echo "Installing a new machine? Nice!"

if ! command -v brew > /dev/null 2>&1; then
  echo "Okay, lets do this. First things first, we need to install homebrew in order to get all the stuff you need"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew was already available... skipping the installation"
  echo "Let's update it instead! (you know you haven't updated in a while)"
  brew update
fi

if ! command -v fish > /dev/null 2>&1 ; then
  echo "Now that we can brew, let's install fish (your friendly shell)"
  brew install fish
  echo "Now that we have fish let's make it our default shell"
  chsh -s /usr/local/bin/fish
else
  echo "Fish already installed! Nice one!"
  echo "Upgrading (just in case)"
  brew upgrade fish
fi

# HERE WE WILL START WITH THE ACTUALL INSTALLATION
if [ -d ~/.osx-setup ]; then
  cd ~/.osx-setup
  git pull
else
  git clone https://github.com/ecomba/osx-setup.git ~/.osx-setup
  cd ~/.osx-setup
fi

fish setup.fish
