---@diagnostic disable: undefined-global
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>-', '<cmd>Ex<CR>')
vim.keymap.set('i', 'jk', '<Esc>')


vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>")
