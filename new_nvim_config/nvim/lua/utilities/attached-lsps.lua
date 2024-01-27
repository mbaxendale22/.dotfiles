local m = {}
function m.getAttachedLSPs()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()

    if next(clients) == nil then
        return msg
    end

    local active_clients = {}
    for _, client in ipairs(clients) do
        local filetypes = client.config.filetypes
        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            table.insert(active_clients, client.name)
        end
    end

    if #active_clients == 0 then
        return msg
    else
        return table.concat(active_clients, ", ")
    end
end


return m
