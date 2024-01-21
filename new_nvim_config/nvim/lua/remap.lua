---@diagnostic disable: undefined-global
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>-', '<cmd>Ex<CR>')
vim.keymap.set('i', 'jk', '<Esc>')


vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>")

-- use ctrl y and ctrl p to maintain text even when deleting
vim.keymap.set("n", "<C-p>", '"ap')
vim.keymap.set("n", "<C-y>", '"ay')

vim.keymap.set("v", "<C-p>", '"ap')
vim.keymap.set("v", "<C-y>", '"ay')

-- find and replace (in whole file)
vim.keymap.set('n', '<leader>fr', [[:%s/]])

-- quickfix list navigation
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<CR>")

-- move left and right between vert splits ('go right', 'go left')
vim.keymap.set("i", "<C-g>r", "<C-w>l")
vim.keymap.set("n", "<C-g>r", "<C-w>l")

vim.keymap.set("i", "<C-g>l", "<C-w>h")
vim.keymap.set("n", "<C-g>l", "<C-w>h")
