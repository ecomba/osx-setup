function ferment -d "Installs all the formulae needed"
  echo "First let us install all the brews you'll need to get going"

  set installed_formulae (brew list)

  set formulae  'caskroom/cask/brew-cask' 'tmux' 'git' 'git-flow' 'tree' \
                'chruby' 'chruby-fish' 'elixir' 'erlang' 'go' 'groovy' \
                'io' 'maven' 'mit-scheme' 'node' 'phantomjs' 'tmate' \
                'ruby-build' 'mysql' 'postgresql' 'python3' 'jq' \
                'boot2docker' 'docker' 'mutt' 'sqlite' 'ino' 'fzf' 'nvim'

  for formula in $formulae
    if contains $formula $installed_formulae
      echo "$formula already installed... skipping"
    else
      echo "Installing: $formula"
      brew install $formula
    end
  end

  # Install fzf (fuzzy finder)
  /usr/local/opt/fzf/install
end
