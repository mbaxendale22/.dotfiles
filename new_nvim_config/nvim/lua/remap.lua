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

-- NAVIGATION
-- quickfix list navigation
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<CR>")

-- move left and right between vert splits ('go right', 'go left')
vim.keymap.set("i", "<C-g>r", "<C-w>l")
vim.keymap.set("n", "<C-g>r", "<C-w>l")
vim.keymap.set("i", "<C-g>l", "<C-w>h")
vim.keymap.set("n", "<C-g>l", "<C-w>h")


-- SNIPPET SYLE MAPS
-- print to the console and insert the cursor between parens
vim.keymap.set('i', '<C-l>', 'console.log()<Esc>ha', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', 'iconsole.log()<Esc>ha', { noremap = true, silent = true })


-- FIND AND REPLACE (WIP)
-- in whole file
vim.keymap.set('n', '<leader>fr', [[:%s/]])
-- in visual selection
vim.keymap.set('v', '<leader>fr', [[:s/]])
-- find and replace but capture the replaced text, reference it with \1 in the substitution
vim.keymap.set('n', '<leader>fk', [[:s/\(.*\)/]])
vim.keymap.set('v', '<leader>fk', [[:s/\(.*\)/]])

-- add to the end of the visually selected lines
vim.keymap.set('v', '<leader>fe', [[:s/$/]])
-- add to the beginning of the visually selected lines
vim.keymap.set('v', '<leader>fs', [[:s/^/]])

-- surround with quotes (word/s must be visually highlighted
vim.keymap.set('v', '<leader>s"', [[:s/\%V\(.*\)\%V/"\1"]])
vim.keymap.set('v', '<leader>s{', [[:s/\%V\(.*\)\%V/{\1}]])
vim.keymap.set('v', '<leader>s[', [[:s/\%V\(.*\)\%V/\[\1\]]) -- add the closing ] manually, cant seem to escape it properly here
