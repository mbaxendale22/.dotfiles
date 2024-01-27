-- find and replace
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
