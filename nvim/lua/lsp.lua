-- --------------------------------
--  Snippets
-- --------------------------------
require("luasnip.loaders.from_vscode").lazy_load()

-- --------------------------------
--  Completion
-- --------------------------------
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"]     = cmp.mapping.select_next_item(),
    ["<S-Tab>"]   = cmp.mapping.select_prev_item(),
    ["<CR>"]      = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"]     = cmp.mapping.abort(),
    ["<C-j>"]     = cmp.mapping(function()
      if luasnip.jumpable(1) then luasnip.jump(1) end
    end, { "i", "s" }),
    ["<C-k>"]     = cmp.mapping(function()
      if luasnip.jumpable(-1) then luasnip.jump(-1) end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
})

-- --------------------------------
--  LSP
-- --------------------------------
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("pyright", {
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = { command = "clippy" },
    },
  },
})

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})

vim.lsp.enable({ "pyright", "rust_analyzer", "ts_ls" })
