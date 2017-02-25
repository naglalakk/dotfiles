" Plugins
" --------------------------------------
set number
set backspace=indent,eol,start
set nocompatible " be iMproved, required
filetype off     " required

" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4

" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree file browser
Plugin 'scrooloose/nerdtree'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Haskell
Plugin 'neovimhaskell/haskell-vim'

" Purescript
Plugin 'raichoo/purescript-vim'

" Python
Plugin 'vim-scripts/indentpython.vim'

" Golang
Plugin 'fatih/vim-go'

" Rails
Plugin 'tpope/vim-rails'

" Javascript
Plugin 'othree/yajs.vim'

" jsdoc
Plugin 'heavenshell/vim-jsdoc'

" Fucking CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Stylus
Plugin 'wavded/vim-stylus'

" Better Whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Easy align
Plugin 'junegunn/vim-easy-align'

"Latex
Plugin 'lervag/vimtex'

"Jade
Plugin 'statianzo/vim-jade'

" Neocomplete
Plugin 'shougo/neocomplete.vim'

" Github
" - gists
Plugin 'mattn/gist-vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Vim airline: status bar
Plugin 'bling/vim-airline'

Plugin 'stephpy/vim-yaml'

" Solarized colorscheme
Bundle 'altercation/vim-colors-solarized'

Bundle 'mattn/webapi-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
set backspace=indent,eol,start
syntax   on
filetype plugin indent on    " required
filetype indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Color
" ---------------------
set background=dark
colorscheme solarized

let g:NERDTreeMapActivateNode = ''
let g:NERDTreeMapOpenInTab = 'o'
map <C-n> :NERDTreeToggle<CR>
