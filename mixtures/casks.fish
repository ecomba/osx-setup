function drum -d "Installs all the casks needed"
  echo "Now that your system is ready, let's install some UI apps"

  set installed_casks (brew cask list)

  set casks 'dropbox' '1password' 'alfred' 'mailbox' \
            'google-chrome' 'google-chrome-canary' 'firefox' \
            'iterm2' 'slack' 'intellij-idea-ce' 'virtualbox' 'cleanmymac' \
            'evernote' 'dash' 'flux' 'spotify' 'skitch' 'skype' \
            'google-drive' 'littleipsum' 'moom'

  for cask in $casks
    if contains $cask $installed_casks
      echo "$cask already installed... skipping"
    else
      echo "Installing: $cask"
      brew cask install $cask
    end
  end
end
