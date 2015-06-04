function install_offlineimap
  cd $HOME
  cd development/github
  git clone git://github.com/spaetz/offlineimap.git
  cd offlineimap
  git checkout 679c491c56c981961e18aa43b31955900491d7a3
  python setup.py install

  rm -f "$HOME/.offlineimaprc"
  ln -s "$HOME/.osx-setup/tools/offlineimaprc" "$HOME/.offlineimaprc"

  cd $HOME
  mkdir .mutt
  ln -s "$HOME/.osx-setup/tools/offlineimap.py" "$HOME/.mutt/offlineimap.py"
end

install_offlineimap
