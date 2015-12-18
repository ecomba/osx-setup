function setup_vim -d "Installs my vim configuration and the plugins"
  rm -f "$HOME/.vimrc"
  ln -s "$HOME/.osx-setup/vim/vimrc" "$HOME/.vimrc"
  _install_pathogen
  _install_bundles
end

function _install_pathogen
  set -x -g vimbundledir "$HOME/.vim/bundle"
  mkdir -p "$HOME/.vim/autoload" $vimbundledir
  curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim
end

function _install_bundles
  set bundles 'https://github.com/mileszs/ack.vim.git' \
              'https://github.com/bling/vim-airline' \
              'https://github.com/kien/ctrlp.vim.git' \
              'https://github.com/tpope/vim-cucumber.git' \
              'https://github.com/elixir-lang/vim-elixir.git' \
              'https://github.com/dag/vim-fish.git' \
              'https://github.com/roman/golden-ratio.git' \
              'https://github.com/tpope/vim-haml.git' \
              'https://github.com/andreimaxim/vim-io.git' \
              'https://github.com/scrooloose/nerdtree.git' \
              'https://github.com/kien/rainbow_parentheses.vim.git' \
              'https://github.com/vim-ruby/vim-ruby.git' \
              'https://github.com/kchmck/vim-coffee-script.git' \
              'https://github.com/tpope/vim-surround.git' \
              'https://github.com/chriskempson/base16-vim.git' \
              'https://github.com/tpope/vim-endwise.git' \
              'https://github.com/ecomba/vim-ruby-refactoring.git' \
              'https://github.com/tmux-plugins/vim-tmux.git' \
              'https://github.com/elzr/vim-json.git' \
              'https://github.com/nanotech/jellybeans.vim.git' \
              'https://github.com/szw/vim-tags.git' \
              'https://github.com/dkprice/vim-easygrep.git' \
              'https://github.com/tpope/vim-fugitive.git' \
              'https://github.com/jplaut/vim-arduino-ino.git'

  cd $vimbundledir
  for bundle in $bundles
    git clone $bundle
  end
  cd $HOME
end
