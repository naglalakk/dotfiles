-- Auto-start obsession
vim.api.nvim_create_augroup("ObsessionAutoStart", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = "ObsessionAutoStart",
  callback = function()
    vim.cmd("silent! Obsession")
  end,
})

-- Auto-save session when creating splits, tabs, or opening files
vim.api.nvim_create_augroup("ObsessionAutoSave", { clear = true })
vim.api.nvim_create_autocmd({ "WinNew", "TabNew" }, {
  group = "ObsessionAutoSave",
  callback = function()
    vim.cmd("silent! Obsession")
  end,
})

-- Specific handler for NERDTree buffer switch
vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = "NERD_tree_*",
  callback = function()
    -- When leaving a NERDTree buffer (like after selecting a file)
    vim.defer_fn(function()
      vim.cmd("silent! Obsession")
    end, 50)
  end,
})
