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

" Airline
Plug 'itchyny/lightline.vim'

" Autocomplete
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Autosave
Plug '907th/vim-auto-save'


" Dhall
Plug 'vmchale/dhall-vim'

" File Explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Format
Plug 'sbdchd/neoformat'
Plug 'junegunn/vim-easy-align'
" Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'sdiehl/vim-ormolu'

" HTML
Plug 'alvan/vim-closetag'

Plug 'Shougo/vimproc.vim', {'do': 'make'}

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'

" Language Servers
" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Nix
Plug 'LnL7/vim-nix'

" Purescript
Plug 'purescript-contrib/purescript-vim'
"Plug 'sriharshachilakapati/vimmer-ps'
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
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Rust
Plug 'rust-lang/rust.vim'

" Sessions
Plug 'tpope/vim-obsession'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Themes
" Plug 'overcache/NeoSolarized'
" Plug 'mhartington/oceanic-next'
Plug 'ghifarit53/tokyonight-vim'

"Typescript
Plug 'leafgarland/typescript-vim'

"Tidal
Plug 'tidalcycles/vim-tidal'

" Initialize plugin system
call plug#end()

map <C-n> :NERDTreeToggle<CR>

autocmd BufEnter,BufRead *.md   set filetype=journal
autocmd BufEnter,BufRead *.vue  set filetype=vue.javascript
autocmd BufEnter,BufRead *.styl set shiftwidth=2
autocmd BufEnter,BufRead *.purs set shiftwidth=2
autocmd BufEnter,BufRead *.hs   set shiftwidth=2
autocmd BufEnter,BufRead *.pug  set shiftwidth=2

" Enable spell checking for .md files
autocmd BufNewFile,BufRead *.md setlocal spell

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

let g:vimmerps_config =
    \ { 'autoStartPscIde': v:true
    \ , 'pscIdePort': v:null
    \ , 'autocompleteAddImport': v:true
    \ , 'pursExe': 'purs'
    \ , 'addNpmPath': v:true
    \ }

syntax enable
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:lightline = {'colorscheme' : 'tokyonight'}

" Haskell
let g:LanguageClient_serverCommands = { 'haskell': ['haskell-language-server-wrapper', '--lsp'] }

" Latex
let g:livepreview_previewer = 'open -a Preview'

let g:python3_host_prog = '/Users/donna/.pyenv/shims/python'

let g:deoplete#enable_at_startup = 1

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

let g:UltiSnipsSnippetsDir='/Users/donna/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=['Ultisnips']

let g:mkdp_browser = 'safari'

set completeopt-=preview

filetype on
filetype plugin indent on
