------------------------
--   Global Variables --
------------------------
-- AutoSave
vim.g.auto_save = 1

-- Coc
vim.g.coc_start_at_startup = false
-- let g:node_client_debug = 1  -- If you need debugging

-- Haskell
vim.g.haskell_classic_highlighting    = 1
vim.g.haskell_indent_if               = 2
vim.g.haskell_indent_case             = 2
vim.g.haskell_indent_let              = 2
vim.g.haskell_indent_where            = 2
vim.g.haskell_indent_before_where     = 2
vim.g.haskell_indent_after_bare_where = 2
vim.g.haskell_indent_do               = 2
vim.g.haskell_indent_in               = 2
vim.g.haskell_indent_guard            = 2
vim.g.haskell_indent_case_alternative = 2
vim.g.cabal_indent_section            = 2

-- Purescript
vim.g.purescript_indent_if    = 2
vim.g.purescript_indent_case  = 2
vim.g.purescript_indent_let   = 2
vim.g.purescript_indent_where = 2
vim.g.purescript_indent_do    = 2
vim.g.purescript_indent_in    = 2

---------------------
--   LaTeX Setup   --
---------------------
vim.g.tex_conceal = ""
vim.g.vimtex_syntax_conceal_disable = 1
-- Example live preview config:
-- let g:livepreview_previewer = 'open -a Preview'


----------------------
--  Python Provider --
----------------------
vim.g.python_host_prog  = "/home/donna/.pyenv/versions/neovim2/bin/python"
vim.g.python3_host_prog = "/home/donna/.pyenv/versions/3.13.1/bin/python"
vim.g.python_highlight_all = 1


---------------------------------
--   UltiSnips (if you use it)  --
---------------------------------
vim.g.UltiSnipsExpandTrigger       = "<C-j>"
vim.g.UltiSnipsJumpForwardTrigger  = "<C-j>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
vim.g.UltiSnipsSnippetsDir         = "$HOME/.config/nvim/UltiSnips"
vim.g.UltiSnipsSnippetDirectories  = { "Ultisnips" }
