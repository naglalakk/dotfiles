-- Diagnostics configuration
vim.diagnostic.config({
  virtual_text = false, -- Turn off inline diagnostics
})

-- Configure diagnostic hover
vim.o.updatetime = 300 -- Reduce update time for faster hover

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      close_events = {
        "CursorMoved",
        "CursorMovedI",
        "BufHidden",
        "InsertCharPre",
        "WinLeave",
      },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    })
  end,
})

-- Set up Mason for tool installation
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",
    "ts_ls",
    "lua_ls",
    "eslint",
  },
})
require("mason-tool-installer").setup({
  ensure_installed = {
    "prettier",
    "black",
    "stylua",
  },
})

-- Set up conform.nvim for formatting
require("conform").setup({
  formatters_by_ft = {
    -- Frontend
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    vue = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },

    -- Python
    python = { "black" },

    -- Lua
    lua = { "stylua" },
  },

  -- Format on save
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  -- Configure formatters with Mason paths
  formatters = {
    prettier = {
      command = vim.fn.stdpath("data") .. "/mason/bin/prettier",
      args = { "--stdin-filepath", "$FILENAME" },
    },
    black = {
      command = vim.fn.stdpath("data") .. "/mason/bin/black",
      args = { "--quiet", "-" },
    },
    stylua = {
      command = vim.fn.stdpath("data") .. "/mason/bin/stylua",
      args = {
        "--stdin-filepath",
        "$FILENAME",
        "--indent-type",
        "Spaces",
        "--indent-width",
        "2",
        "--column-width",
        "80",
        "--",
        "-",
      },
    },
  },
})

-- Create a format command for manual formatting
vim.api.nvim_create_user_command("Format", function()
  require("conform").format({ async = false, lsp_fallback = true })
end, {})

-- LSP Configuration
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Set up LSP servers
require("mason-lspconfig").setup_handlers({
  pyright = function()
    require("lspconfig").pyright.setup({
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            extraPaths = {
              "./igloo_api",
              "./accounting_api",
              "./contracts_api",
              "./portfolio_api",
            },
            useLibraryCodeForTypes = true,
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
            packageIndexDepths = {
              { name = "rest_framework", depth = 4, includeAllSymbols = true },
              { name = "django", depth = 4, includeAllSymbols = true },
              { name = "factory", depth = 4, includeAllSymbols = true },
              { name = "sqlalchemy", depth = 4, includeAllSymbols = true },
              { name = "dateutil", depth = 2, includeAllSymbols = true },
            },
          },
        },
      },
    })
  end,
  eslint = function()
    require("lspconfig").eslint.setup({
      capabilities = capabilities,
      -- Keep ESLint for linting only, conform handles formatting
      on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
      end,
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
        "svelte",
      },
      settings = {
        packageManager = "npm",
        workingDirectories = { { mode = "auto" } },
        useESLintClass = false,
        experimental = {
          useFlatConfig = false,
        },
        validate = "on",
      },
    })
  end,
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
    })
  end,
})

-- Completion setup
require("cmp").setup({
  sources = {
    { name = "nvim_lsp" },
  },
})
