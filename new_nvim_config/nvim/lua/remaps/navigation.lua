-- quickfix list navigation
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<CR>")

-- move left and right between vert splits ('go right', 'go left')
vim.keymap.set("i", "<C-g>l", "<C-w>l")
vim.keymap.set("n", "<C-g>l", "<C-w>l")

vim.keymap.set("i", "<C-g>h", "<C-w>h")
vim.keymap.set("n", "<C-g>h", "<C-w>h")

-- create a new v split and move the cursor to it
vim.keymap.set("n", "<leader>vs", "<cmd>vsp<CR><C-w>l")
