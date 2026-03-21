----------------------------------
--  Plugin Manager (vim-plug)   --
----------------------------------
vim.cmd([[
call plug#begin()

" Autosave
Plug '907th/vim-auto-save'

" Sessions
Plug 'tpope/vim-obsession'

" Rust
Plug 'rust-lang/rust.vim'

" Themes
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

call plug#end()
]])
