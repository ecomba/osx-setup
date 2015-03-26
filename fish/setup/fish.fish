function setup_fish
  _check_dot_config
  _add_base16
  _check_fish_conf_dir
  _link_fish
  _install_completions
end

function _check_dot_config
  if not test -e ~/.config
    mkdir ~/.config
  else
    echo Config directory is already present
  end
end

function _check_fish_conf_dir
  if not test -e ~/.config/fish
    mkdir ~/.config/fish
  end
end

function _link_fish
  if test -e ~/.config/fish/config.fish
    echo You already have a fish configuration file
  else
    echo Linking the configuration file
    ln -s "$HOME/.osx-setup/fish/config/config.fish" "$HOME/.config/fish/config.fish"
  end
end

function _add_base16
  if not test -e ~/.config/base16-shell
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    echo 'eval sh $HOME/.config/base16-shell/base16-default.dark.sh' >> ~/.config/fish/config.fish
  else
    echo It seems that you have base 16 already installed, nice!
  end
end

function _install_completions
  if not test -e ~/.config/fish/completions
    mkdir ~/.config/fish/completions
    curl -LSso ~/.config/fish/completions/docker.fish https://raw.github.com/barnybug/docker-fish-completion/master/docker.fish
  end
end
