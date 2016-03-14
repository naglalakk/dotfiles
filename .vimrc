" Spaces
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

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Golang
Plugin 'fatih/vim-go'

" Javascript
Plugin 'pangloss/vim-javascript'

" Fucking CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Better Whitespace
Plugin 'ntpeters/vim-better-whitespace'

Bundle 'altercation/vim-colors-solarized'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color
" ---------------------
set background=dark
colorscheme solarized

set list
set listchars=tab:>-

" Keybindings
" -------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
