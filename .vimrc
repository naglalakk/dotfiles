set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set backspace=indent,eol,start
syntax on


" Plugins
" --------------------------------------
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
Plugin 'pangloss/vim-javascript'

" jsdoc
Plugin 'heavenshell/vim-jsdoc'

" Fucking CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Better Whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Easy align
Plugin 'junegunn/vim-easy-align'

"Latex
Plugin 'lervag/vimtex'

"Jade
Plugin 'digitaltoad/vim-pug'
Plugin 'dNitro/vim-pug-complete'

" Solarized colorscheme
Bundle 'altercation/vim-colors-solarized'

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype on
filetype plugin indent on    " required
filetype indent on

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Color
" ---------------------
set background=dark
colorscheme solarized

" Keybindings
" -------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
