--------------------------------
--  UI / Colors / Lightline   --
--------------------------------
-- Enable 24bit true color in older Neovim versions:
-- (We've already done it above; or do it in your shell)
-- vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
--
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Set colorscheme
vim.cmd("colorscheme tokyonight")

-- Lightline theme
vim.g.lightline = { colorscheme = "tokyonight" }


