local s = require("remaps.MySnippets")
local mySnippets = s:new()

-- curently avail snippet types 
-- doc
-- log
-- error

vim.keymap.set('n', '<leader>dc',function() mySnippets:exec("doc") end, {})
vim.keymap.set('n', '<C-l>', function() mySnippets:exec("log") end, {} )
vim.keymap.set('n', '<C-e>', function() mySnippets:exec("error") end, {} )
