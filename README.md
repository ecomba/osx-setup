# osx-setup

This is a set of installation scripts that will get my environment going.

## What will this do

- Install homebrew and install the needed formulae.
- Install cask and install software.
- Install vim and configure it (plugins, etc)
- Configure fish and the location of the different directories.

## Installation

I wanted to make the installation as easy as possible, borrowing the ideas
of [Homebrew](http://brew.sh), I made the setup to be installable without
having to clone a repo by hand (_it will still clone the repo to your home 
directory, but into the `.osx-setup` directory_).

If you want to install (**AT YOUR OWN RISK!**) run:

```
curl -s https://raw.githubusercontent.com/ecomba/osx-setup/master/bootstrap.sh
| bash
```

## Thanks

This project is heavily inspired by @christophgockel's
[dotfiles](https://github.com/christophgockel/dotfiles) project.
