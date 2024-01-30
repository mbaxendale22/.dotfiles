---@diagnostic disable: undefined-global
---
--- A keymap merge function for quotes. Allows for one keymap to target
--- the next set of quotes in the line regardless of whether they're single or double quotes.
--- Pass the two keymaps to merge as arguments
---@param keymap1 string
---@param keymap2 string
function ChangeQuotes(keymap1, keymap2)
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2] + 1

    local single_quote_pos = line:find("'", col, true)
    local double_quote_pos = line:find('"', col, true)

    if single_quote_pos and (not double_quote_pos or single_quote_pos < double_quote_pos) then
        vim.api.nvim_feedkeys(keymap1, 'n', true)
    elseif double_quote_pos then
        vim.api.nvim_feedkeys(keymap2, 'n', true)
    end
end

vim.api.nvim_set_keymap("n", "ciq", [[<Cmd>lua ChangeQuotes("ci'", 'ci"')<CR>]], {})
vim.api.nvim_set_keymap("n", "caq", [[<Cmd>lua ChangeQuotes("ca'", 'ca"')<CR>]], {})

vim.api.nvim_set_keymap("n", "viq", [[<Cmd>lua ChangeQuotes("vi'", 'vi"')<CR>]], {})
vim.api.nvim_set_keymap("n", "vaq", [[<Cmd>lua ChangeQuotes("va'", 'va"')<CR>]], {})

vim.api.nvim_set_keymap("n", "diq", [[<Cmd>lua ChangeQuotes("di'", 'di"')<CR>]], {})
vim.api.nvim_set_keymap("n", "daq", [[<Cmd>lua ChangeQuotes("da'", 'da"')<CR>]], {})

vim.api.nvim_set_keymap("n", "yiq", [[<Cmd>lua ChangeQuotes("yi'", 'yi"')<CR>]], {})
vim.api.nvim_set_keymap("n", "yaq", [[<Cmd>lua ChangeQuotes("ya'", 'ya"')<CR>]], {})
