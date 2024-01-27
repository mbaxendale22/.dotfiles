local m = {}

function m.selectUnsavedChangesText()
    if GetLastSaveTime() == nil then
        return "Buffer has not been saved in this session"
    else
        return "Unsaved changes last save: " .. GetLastSaveTime()
    end
end

function m.getStatusText()
    local is_modified = vim.api.nvim_buf_get_option(0, 'modified')
    if is_modified then
        return m.selectUnsavedChangesText()
    else
        return 'no unsaved changes'
    end
end

--- Function to set the color of the unsaved changes status text. Checks the modified status of the
--- current buffer and returns relevant color
-- @return a table specifiying the foreground color, either green for no unsaved changes or red elsewise
function m.getStatusColor()
    local is_modified = vim.api.nvim_buf_get_option(0, 'modified')
    if is_modified then
        return { fg = "#ff5555" }
    else
        return { fg = "#50fa7b" }
    end
end

return m
