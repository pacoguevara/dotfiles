-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.keymap.set("n", "/", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFindFile<CR>")
-- empty setup using defaults
require("nvim-tree").setup()
