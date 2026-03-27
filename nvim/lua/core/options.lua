local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.cursorline = true

-- scrolling
opt.scrolloff = 8

-- clipboard
opt.clipboard = "unnamedplus"

-- split
opt.splitright = true
opt.splitbelow = true

-- clipboard to win
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank -i --crlf",
    ["*"] = "win32yank -i --crlf",
  },
  paste = {
    ["+"] = "win32yank -o --lf",
    ["*"] = "win32yank -o --lf",
  },
  cache_enabled = 0,
}

-- error log
vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
    },
  },
})

vim.cmd([[
highlight DiagnosticError guifg=#ff6c6b
highlight DiagnosticWarn  guifg=#ECBE7B
highlight DiagnosticInfo  guifg=#51afef
highlight DiagnosticHint  guifg=#98be65
]])
