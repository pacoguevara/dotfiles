-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
end)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
