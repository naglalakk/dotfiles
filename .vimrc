" Plugins
" --------------------------------------
set backspace=indent,eol,start
set number
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
syntax   on

" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Purescript
Plug 'raichoo/purescript-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Golang
Plug 'fatih/vim-go'

" Rails
Plug 'tpope/vim-rails'

" Javascript
Plug 'othree/yajs.vim'

" Fucking CoffeeScript
Plug 'kchmck/vim-coffee-script'

" Sass
Plug 'cakebaker/scss-syntax.vim'

" jsdoc
Plug 'heavenshell/vim-jsdoc'

"Jade
Plug 'statianzo/vim-jade'

"Markdown
Plug 'plasticboy/vim-markdown'

"Latex
Plug 'lervag/vimtex'

" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()

" Color
" ---------------------
set background=dark
colorscheme solarized

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on

autocmd FileType python setlocal tabstop=4

set clipboard=unnamed
