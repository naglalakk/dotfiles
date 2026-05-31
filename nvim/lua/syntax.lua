-- --------------------------------
--  Treesitter
-- --------------------------------
require("nvim-treesitter").setup({
  ensure_installed = { "python", "rust", "typescript", "lua", "toml", "json", "yaml" , "dockerfile" },
  highlight = { enable = true },
  indent = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
