syntax on

set number
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set clipboard=unnamed
set nobackup noswapfile
set colorcolumn=80

call plug#begin()

" Autocomplete
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autosave
Plug '907th/vim-auto-save'

" Dhall
Plug 'vmchale/dhall-vim'

" File Explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Format
Plug 'sbdchd/neoformat'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'meck/vim-brittany'
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
" Plug 'alx741/vim-hindent'

Plug 'Shougo/vimproc.vim', {'do': 'make'}

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'

" Nix
Plug 'LnL7/vim-nix'

" Purescript
Plug 'purescript-contrib/purescript-vim'
" Plug 'frigoeu/psc-ide-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug '2072/PHP-Indenting-for-VIm'

Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'

" Python
Plug 'tell-k/vim-autopep8'

" Latex
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Markdown
Plug 'junegunn/vim-journal'
Plug 'JamshedVesuna/vim-markdown-preview'


" Rust
Plug 'rust-lang/rust.vim'

" Sessions
Plug 'tpope/vim-obsession'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"Tidal
Plug 'tidalcycles/vim-tidal'

Plug 'neomake/neomake'

" Initialize plugin system
call plug#end()

map <C-n> :NERDTreeToggle<CR>

autocmd BufEnter,BufRead *.md   set filetype=journal
autocmd BufEnter,BufRead *.vue  set filetype=vue.javascript
autocmd BufEnter,BufRead *.styl set shiftwidth=2
autocmd BufEnter,BufRead *.purs set shiftwidth=2
autocmd BufEnter,BufRead *.hs   set shiftwidth=2
autocmd BufEnter,BufRead *.pug  set shiftwidth=2

"vmap a= :Tabularize /=<CR>
"vmap a; :Tabularize /::<CR>
"vmap a- :Tabularize /-><CR>

let g:auto_save = 1  " enable AutoSave on Vim startup

" Haskell rules
let g:haskell_classic_highlighting    = 1
let g:haskell_indent_if               = 2
let g:haskell_indent_case             = 2
let g:haskell_indent_let              = 2
let g:haskell_indent_where            = 2
let g:haskell_indent_before_where     = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do               = 2
let g:haskell_indent_in               = 2
let g:haskell_indent_guard            = 2
let g:haskell_indent_case_alternative = 2
let g:cabal_indent_section            = 2
let g:brittany_on_save                = 0

" Purescript rules
let purescript_indent_if    = 2
let purescript_indent_case  = 2
let purescript_indent_let   = 2
let purescript_indent_where = 2
let purescript_indent_do    = 2
let purescript_indent_in    = 2

" Latex
let g:livepreview_previewer = 'open -a Preview'

let g:python3_host_prog = '~/.pyenv/shims/python'

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

let g:UltiSnipsSnippetsDir='/Users/Donna/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=['Ultisnips']

" github flavoured markdown on preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Firefox'

set completeopt-=preview

filetype on
filetype plugin indent on
