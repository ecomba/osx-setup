# osx-setup

I wanted to make the installation of a new computer as easy as possible,
borrowing the ideas of [Homebrew](http://brew.sh), I made the setup to be
installable without having to clone a repo (_the installation will still
clone the repo to your home directory, but into the `.osx-setup` directory_).

## WARNING!!!
_This installation script has been made for me and me only. If it renders
your system unusable remember that you used it_ **AT YOUR OWN RISK**.

## What will this do

- Install homebrew
- Install and configure the [fish shell](http://fishshell.com/)
- Install all the formulae I use normally (_and some others_)
- Install all the vim bundles and configure my vim environment
- Install and configure my tmux environment
- Install cask and install some of the software I use (_and some others_)

## Installation

If you want to install my configuration (**AT YOUR OWN RISK!**) run:

```
curl -s https://raw.githubusercontent.com/ecomba/osx-setup/master/bootstrap.sh
| bash
```

## Thanks

This project is heavily inspired by @christophgockel's
[dotfiles](https://github.com/christophgockel/dotfiles) project.
