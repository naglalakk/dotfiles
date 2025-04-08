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

vim.cmd([[
function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let filename = bufname(buflist[winnr - 1])
  
  " If no filename, return [No Name]
  if filename == ''
    return '[No Name]'
  endif
  
  " Get relative path (or full path if needed)
  let filepath = fnamemodify(filename, ':~:.')
  
  " If path is too long, show only last two components (folder/file.py)
  let parts = split(filepath, '/')
  if len(parts) > 2
    return join(parts[-2:], '/')
  else
    return filepath
  endif
endfunction

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " Select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " Set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " The label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " After the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  return s
endfunction

set tabline=%!MyTabLine()
]])

vim.g.gruvbox_contrast_dark = "hard"
-- Set colorscheme
vim.cmd("colorscheme tokyonight")

-- Lightline theme
vim.g.lightline = { colorscheme = "tokyonight" }
