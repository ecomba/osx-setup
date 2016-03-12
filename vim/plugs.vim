call plug#begin('~/.vim/plugged')
  Plug 'dag/vim-fish'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'chriskempson/base16-vim'

  Plug 'roman/golden-ratio'

  Plug 'tmux-plugins/vim-tmux'

  Plug 'szw/vim-tags'
  Plug 'dkprice/vim-easygrep'

  Plug 'jplaut/vim-arduino-ino'
  Plug 'mileszs/ack.vim'

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-cucumber'

  Plug 'ctrlpvim/ctrlp.vim',          { 'on': 'CtrlP' }
  Plug 'scrooloose/nerdtree',         { 'on': 'NERDTreeToggle' }
  Plug 'tfnico/vim-gradle',           { 'for': 'groovy' }
  Plug 'vim-ruby/vim-ruby',           { 'for': 'ruby' }
  Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
  Plug 'tpope/vim-haml',              { 'for': 'haml' }
  Plug 'kchmck/vim-coffee-script',    { 'for': 'coffee' }
  Plug 'elixir-lang/vim-elixir',      { 'for': 'elixir' }
  Plug 'andreimaxim/vim-io',          { 'for': 'io' }
  Plug 'elzr/vim-json',               { 'for': 'json' }
call plug#end()
