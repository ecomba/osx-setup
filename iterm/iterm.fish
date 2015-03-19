function setup_iterm
  _add_base16
end

function _add_base16
  if not test -e ~/.config/base16-shell
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    echo 'eval sh $HOME/.config/base16-shell/base16-default.dark.sh' >> ~/.config/fish/config.fish
  else
    echo It seems that you have base 16 already installed, nice!
  end
end

