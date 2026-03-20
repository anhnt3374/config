local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

-- save
keymap.set("n", "<leader>w", ":w<CR>")

-- quit
keymap.set("n", "<leader>q", ":q<CR>")

-- better navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- toggle file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- format
keymap.set("n", "<leader>f", function()
  require("conform").format()
end)

-- hover to show
keymap.set("n", "K", vim.lsp.buf.hover)
