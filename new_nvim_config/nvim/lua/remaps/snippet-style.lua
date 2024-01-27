local function log(mode)
    local filetype = vim.bo.filetype
    if filetype == 'lua' or filetype == 'python' then
        if mode == 'normal' then
            vim.api.nvim_feedkeys("oprint()\x1bha", 'n', true)
        elseif mode == 'insert' then
            vim.api.nvim_feedkeys("print()\x1bha", 'i', true)
        end
        return
    end
    if filetype == 'typescript' or filetype == 'javascript' or filetype == 'typescriptreact' or filetype == 'javascriptreact' or filetype == 'html' then
        if mode == 'normal' then
            vim.api.nvim_feedkeys("oconsole.log('')\x1bhha", 'n', true)
        elseif mode == 'insert' then
            vim.api.nvim_feedkeys("console.log('')\x1bhha", 'i', true)
        end
        return
    end
end

-- eneter console.lof() and position the cursor the cursor in the parens
vim.keymap.set('i', '<C-l>', function()
    log('insert')
end, { noremap = true, silent = true })
-- create a new line, change to insert mode, enter console.log() and position the cursor in the parens
vim.keymap.set('n', '<C-l>', function()
    log('normal')
end, { noremap = true, silent = true })
