function setup_vim -d "Installs my vim configuration and the plugins"
  rm -f "$HOME/.vimrc"
  ln -s "$HOME/.osx-setup/vim/vimrc" "$HOME/.vimrc"
  _install_vim_plug
  _install_nvim
end

function _install_vim_plug
  set -x -g plugdir "$HOME/.vim/plugged"
  mkdir -p "$HOME/.vim/autoload" $plugdir
  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
end

function _install_nvim
  mkdir "$HOME/.config"
  ln -s "$HOME/.vim" "$HOME/.config/nvim"
end
