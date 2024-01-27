local function closeAndMove()
    local windows = vim.api.nvim_list_wins()
    local total_windows = #windows

    if total_windows == 4 then
        vim.cmd("UndotreeHide")
        vim.api.nvim_feedkeys("<C-w>l<C-w>l", 'n', true)
    elseif total_windows == 3 then
        vim.cmd("UndotreeHide")
        vim.api.nvim_feedkeys("<C-w>l", 'n', true)
    end
end

local function openAndMove()
    vim.cmd("UndotreeShow")
    vim.cmd("UndotreeFocus")
end

return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<leader>u", openAndMove, {})
        vim.keymap.set("n", "<leader>U", closeAndMove, {})
    end,
}
