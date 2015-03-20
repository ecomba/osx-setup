function drum -d "Installs all the casks needed"
  echo "Now that your system is ready, let's install some UI apps"

  set casks 'dropbox' '1password' 'alfred' \
            'google-chrome' 'google-chrome-canary' 'firefox' \
            'iterm2' 'slack' 'intellij-idea-ce' 'virtualbox'

  for cask in $casks
    echo "Installing: $cask"
    brew cask install $cask
  end
end
