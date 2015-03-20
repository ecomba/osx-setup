function setup_fish
  _check_dot_config
  _add_base16
  _link_fish
end

function _check_dot_config
  if not test -e ~/.config
    mkdir ~/.config
  else
    echo Config directory is already present
  end
end

function _check_fish_conf
  if not test -e/.config/fish
    mkdir ~/.config/fish
    true
  else
    false
  end
end

function _link_fish
  if _check_fish_conf
    ln -s "$HOME/.osx-setup/fish/config.fish" "$HOME/.config/fish/config.fish"
  else
    echo You already have a fish configuration!
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
