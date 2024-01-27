local buffer_save_times = {}
function GetLastSaveTime()
    local buf_id = vim.api.nvim_get_current_buf()
    local save_time = buffer_save_times[buf_id]
    if save_time then
        return os.date("%H:%M:%S", save_time)
    else
        return nil
    end
end

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = "100" })
    end,
})

-- Function to update timestamp
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        local buf_id = vim.api.nvim_get_current_buf()
        buffer_save_times[buf_id] = os.time()
    end
})
