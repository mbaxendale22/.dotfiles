local function format_file()
    vim.lsp.buf.format()
    print('file formatted!')
end

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>-', '<cmd>Ex<CR>')
vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set("n", "<leader>lf", format_file, {})
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>")

-- use ctrl y and ctrl p to maintain text even when deleting
vim.keymap.set("n", "<C-p>", '"ap')
vim.keymap.set("n", "<C-y>", '"ay')
vim.keymap.set("v", "<C-p>", '"ap')
vim.keymap.set("v", "<C-y>", '"ay')
