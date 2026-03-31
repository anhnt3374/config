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

-- csv viewer
keymap.set("n", "<leader>cv", function()
  require("csvview").toggle()
end, { desc = "CSV View Toggle" })

--------------------------------------------------
-- FILE / EXPLORER
--------------------------------------------------

keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- explorer
keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>", {
  desc = "Toggle Outline",
})
keymap.set("n", "<leader>bm", function()
  require("buffer_manager.ui").toggle_quick_menu()
end, {
  desc = "Buffer Manager",
})

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

-- TELESCOPE
-- 🔍 search file (Ctrl+P)
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")

-- 🔍 search text toàn project (🔥 cái bạn cần)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- 🔍 search buffer đang mở
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- 🔍 search trong file hiện tại
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
