function ferment -d "Installs all the formulae needed"
  set formulae  'caskroom/cask/brew-cask' 'tmux' 'git' 'git-flow' 'tree' \
                'chruby' 'chruby-fish' 'elixir' 'erlang' 'go' 'groovy' \
                'io' 'maven' 'mit-scheme' 'node' 'phantomjs' 'tmate' \
                'ruby-build' 'mysql' 'postgresql'

  for formula in $formulae
    echo "Installing: $formula"
    brew install $formula
  end
end
