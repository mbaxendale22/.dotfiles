local regex = require("remaps.RegexReplacements")
local myRegexReplacements = regex:new()

-- find and replace in whole file
vim.keymap.set('n', '<leader>fr', [[:%s/]])
-- find and replace in visual selection
vim.keymap.set('v', '<leader>fr', [[:s/]])

-- add to the end of the visually selected lines
vim.keymap.set('v', '<leader>fe', [[:s/$/]])
-- add to the beginning of the visually selected lines
vim.keymap.set('v', '<leader>fs', [[:s/^/]])

-- capture what is visually highlighted for use later with \1
vim.keymap.set('v', '<leader>fk', [[:s/\%V\(.*\)\%V/]])
-- capture word currently under cursor for use later with \1
vim.keymap.set('n', '<leader>fk', function() myRegexReplacements:capture_replace_current_word() end)

-- surround visual selection with symbols (quotes, brackets)
vim.keymap.set('v', '<leader>s"', function() myRegexReplacements:surround_selection("quotes") end)
vim.keymap.set('v', '<leader>s{', function() myRegexReplacements:surround_selection("braces") end)
vim.keymap.set('v', '<leader>s[', function() myRegexReplacements:surround_selection("brackets") end)
vim.keymap.set('v', '<leader>s(', function() myRegexReplacements:surround_selection("parens") end)
-- surround current word under the cursor with symbols (quotes, brackets)
vim.keymap.set('n', '<leader>s"', function() myRegexReplacements:surround_current_word("quotes") end)
vim.keymap.set('n', '<leader>s{', function() myRegexReplacements:surround_current_word("braces") end)
vim.keymap.set('n', '<leader>s[', function() myRegexReplacements:surround_current_word("brackets") end)
vim.keymap.set('n', '<leader>s(', function() myRegexReplacements:surround_current_word("parens") end)
