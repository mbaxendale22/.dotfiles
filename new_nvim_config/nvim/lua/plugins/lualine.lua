---@diagnostic disable: undefined-global
local modified_buffer = require("utilities.modified-buffer")
local attached_lsps = require("utilities.attached-lsps")

local getActiveLspClients = {
    attached_lsps.getAttachedLSPs,
    icon = ' LSP:',
    color = { fg = '#ffffff' },
}

return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "dracula",
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = false,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { { modified_buffer.getStatusText, color = modified_buffer.getStatusColor, padding = { right = 3 } },
                    getActiveLspClients, },
                lualine_y = {},
                lualine_z = { 'location' }
            },
        })
    end,
}
