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

" Nerdtree file browser
Plug 'scrooloose/nerdtree'

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

" jsdoc
Plug 'heavenshell/vim-jsdoc'

" Stylus
Plug 'wavded/vim-stylus'

" Better Whitespace
Plug 'ntpeters/vim-better-whitespace'

"Latex
Plug 'lervag/vimtex'

"Jade
Plug 'statianzo/vim-jade'

" Neocomplete
Plug 'shougo/neocomplete.vim'

" Github
" - gists
Plug 'mattn/gist-vim'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Vim airline: status bar
Plug 'bling/vim-airline'

Plug 'stephpy/vim-yaml'

" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()

" Color
" ---------------------
set background=dark
colorscheme solarized

filetype on
filetype plugin indent on
filetype indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeMapActivateNode = ''
let g:NERDTreeMapOpenInTab = 'o'
map <C-n> :NERDTreeToggle<CR>
