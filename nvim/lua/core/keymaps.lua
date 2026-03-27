local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

--------------------------------------------------
-- BASIC
--------------------------------------------------

-- save / quit
keymap.set("n", "<leader>w", "<cmd>w<CR>")
keymap.set("n", "<leader>q", "<cmd>q<CR>")

--------------------------------------------------
-- WINDOW NAVIGATION
--------------------------------------------------

keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

--------------------------------------------------
-- EDITING
--------------------------------------------------

-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- search selected text
keymap.set("v", "//", 'y/\\V<C-R>"<CR>')

--------------------------------------------------
-- FILE / EXPLORER
--------------------------------------------------

keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- explorer

--------------------------------------------------
-- FORMAT
--------------------------------------------------

keymap.set("n", "<leader>ff", function()
  require("conform").format()
end)

--------------------------------------------------
-- LSP
--------------------------------------------------

-- hover doc
keymap.set("n", "K", vim.lsp.buf.hover)

--------------------------------------------------
-- DIAGNOSTIC (ERROR)
--------------------------------------------------

-- xem lỗi tại dòng
keymap.set("n", "<leader>de", vim.diagnostic.open_float)

-- next / prev
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "[d", vim.diagnostic.goto_prev)

--------------------------------------------------
-- TROUBLE (UI PANEL)
--------------------------------------------------
keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")
