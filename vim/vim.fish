function setup_vim -d "Installs my vim configuration and the plugins"
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
  set bundles 'git@github.com:mileszs/ack.vim.git' \
              'git@github.com:bling/vim-airline' \
              'git@github.com:kien/ctrlp.vim.git' \
              'git@github.com:tpope/vim-cucumber.git' \
              'git@github.com:elixir-lang/vim-elixir.git' \
              'git@github.com:dag/vim-fish.git' \
              'git@github.com:roman/golden-ratio.git' \
              'git@github.com:tpope/vim-haml.git' \
              'git@github.com:andreimaxim/vim-io.git' \
              'git@github.com:scrooloose/nerdtree.git' \
              'git@github.com:kien/rainbow_parentheses.vim.git' \
              'git@github.com:vim-ruby/vim-ruby.git' \
              'git@github.com:kchmck/vim-coffee-script.git' \
              'git@github.com:tpope/vim-surround.git' \
              'git@github.com:chriskempson/base16-vim.git' \
              'git@github.com:tpope/vim-endwise.git' \
              'git@github.com:ecomba/vim-ruby-refactoring.git'

  cd $vimbundledir
  for bundle in $bundles
    git clone $bundle
  end
  cd $HOME
end
