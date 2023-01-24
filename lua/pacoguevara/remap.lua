vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "ww", ":w<CR>")
vim.keymap.set("n", "qq", ":q<CR>")

-- Clear search highlight
vim.keymap.set("n", "<esc>", ":noh<return><esc>")

