--------------------
--  Key Mappings  --
--------------------
-- Remap <C-n> to toggle NERDTree
vim.keymap.set("n", "<C-n>", "<cmd>NERDTreeToggle<CR>")

-- Leader key
vim.g.mapleader = ","

-- Telescope bindings
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

