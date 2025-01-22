---------------------
--  Basic Settings --
---------------------
-- In Lua, we can still run Vim commands directly:
vim.cmd("syntax on")  -- or 'syntax enable'
-- Options
vim.opt.number = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true
-- Append to 'clipboard' option
vim.opt.clipboard:append("unnamedplus")

-- Some people also like to set environment variables in Lua (optional):
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1

---------------------
--  Autocommands   --
---------------------
-- Helper to set shiftwidth/tabstop to 2
local function setIndent2()
  vim.opt_local.shiftwidth = 2
  vim.opt_local.tabstop = 2
end

-- For Markdown: set filetype=journal & enable spell
vim.api.nvim_create_autocmd({"BufEnter","BufRead"}, {
  pattern = "*.md",
  callback = function()
    vim.opt_local.filetype = "journal"
    vim.opt_local.spell = true
  end
})

-- For certain filetypes, shiftwidth=2 & tabstop=2
vim.api.nvim_create_autocmd({"BufEnter","BufRead"}, {
  pattern = {
    "*.vue", "*.js", "*.ts", "*.scss",
    "*.styl", "*.purs", "*.hs", "*.agda", "*.pug"
  },
  callback = setIndent2
})

-- For Rust: set filetype=rust on BufReadPost
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.rs",
  callback = function()
    vim.opt_local.filetype = "rust"
  end
})
