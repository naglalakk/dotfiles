syntax on

set number
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nobackup noswapfile
set colorcolumn=80
set nocompatible
set termguicolors
set clipboard+=unnamedplus

call plug#begin()

" Agda
Plug 'derekelkins/agda-vim'

" Autocomplete
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autosave
Plug '907th/vim-auto-save'

" Basics
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" CSS / Style
Plug 'wavded/vim-stylus'


" Dhall
Plug 'vmchale/dhall-vim'

" File Explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Format
Plug 'sbdchd/neoformat'
Plug 'junegunn/vim-easy-align'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'

" Git
Plug 'dinhhuy258/git.nvim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" HTML
Plug 'alvan/vim-closetag'

Plug 'Shougo/vimproc.vim', {'do': 'make'}

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'

" - Svelte
Plug 'evanleck/vim-svelte'
Plug 'codechips/coc-svelte', {'do': 'npm install'}

" Julia
Plug 'JuliaEditorSupport/julia-vim'

" Latex
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Markdown
Plug 'junegunn/vim-journal'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Nix
Plug 'LnL7/vim-nix'

" Notify
Plug 'rcarriga/nvim-notify'


" Purescript
Plug 'purescript-contrib/purescript-vim'

" Python
" Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/indentpython.vim'
Plug 'Vimjas/vim-python-pep8-indent'

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug '2072/PHP-Indenting-for-VIm'

" Pug
Plug 'digitaltoad/vim-pug'


" Rust
Plug 'rust-lang/rust.vim'

" Sessions
Plug 'tpope/vim-obsession'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Terraform
Plug 'hashivim/vim-terraform'

" Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Tools
Plug 'evansalter/vim-checklist'
Plug 'itchyny/lightline.vim'

"Typescript
Plug 'leafgarland/typescript-vim'

"Tidal
Plug 'tidalcycles/vim-tidal'

" Initialize plugin system
call plug#end()

map <C-n> :NERDTreeToggle<CR>

autocmd BufEnter,BufRead *.md    set filetype=journal
autocmd BufEnter,BufRead *.vue   set filetype=vue tabstop =2
autocmd BufEnter,BufRead *.vue   set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.js    set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.ts    set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.scss  set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.styl  set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.purs  set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.hs    set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.agda  set shiftwidth=2 tabstop=2
autocmd BufEnter,BufRead *.pug   set shiftwidth=2 tabstop=2
autocmd BufReadPost      *.rs    setlocal filetype=rust

" Enable spell checking for .md files
autocmd BufNewFile,BufRead *.md setlocal spell

let g:auto_save = 1  " enable AutoSave on Vim startup

" Coc rules
let g:coc_start_at_startup = v:false
" let g:node_client_debug = 1

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

" Purescript rules
let purescript_indent_if    = 2
let purescript_indent_case  = 2
let purescript_indent_let   = 2
let purescript_indent_where = 2
let purescript_indent_do    = 2
let purescript_indent_in    = 2

""""" enable 24bit true color

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


""""" enable the theme
syntax enable
set background=dark
colorscheme tokyonight

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'tokyonight' }

" Latex
" let g:livepreview_previewer = 'open -a Preview'
"
let g:tex_conceal = ""
let g:vimtex_syntax_conceal_disable = 1

"
" Python provider
let g:python_host_prog = "/home/donna/.pyenv/versions/neovim2/bin/python"
let g:python3_host_prog = "/home/donna/.pyenv/versions/3.13.1/bin/python"

let g:python_highlight_all = 1

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

let g:UltiSnipsSnippetsDir='$HOME/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=['Ultisnips']

let g:mkdp_browser = 'chromium'

filetype on
filetype plugin indent on
