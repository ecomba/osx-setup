function drum -d "Installs all the casks needed"
  set casks 'dropbox' '1password' 'google-chrome' 'firefox' 'alfred' \
            'iterm2' 'slack' 'virtualbox' 'atom'

  for cask in $casks
    echo "Installing: $cask"
    brew cask install $cask
  end
end
