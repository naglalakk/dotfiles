----------------------------------
--  Plugin Manager (vim-plug)   --
----------------------------------
vim.cmd([[
call plug#begin()

" Autosave
Plug '907th/vim-auto-save'

" Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Language server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" Rust
Plug 'rust-lang/rust.vim'

" Sessions
Plug 'tpope/vim-obsession'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Themes
Plug 'scottmckendry/cyberdream.nvim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

call plug#end()
]])

