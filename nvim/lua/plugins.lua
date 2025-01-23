----------------------------------
--  Plugin Manager (vim-plug)   --
----------------------------------
-- If you want to keep using vim-plug, just embed the same call:
vim.cmd([[
call plug#begin()

" Agda
Plug 'derekelkins/agda-vim'

" Autocomplete
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
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

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

" Svelte
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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

" Terraform
Plug 'hashivim/vim-terraform'

" Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Tools
Plug 'evansalter/vim-checklist'
Plug 'itchyny/lightline.vim'

" Typescript
Plug 'leafgarland/typescript-vim'

" Tidal
Plug 'tidalcycles/vim-tidal'

call plug#end()
]])
