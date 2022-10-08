vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true
vim.opt.background = "dark"

 vim.cmd("colorscheme tokyonight-moon")

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("signcolumn", {
        bg = "none",
    })

    hl("colorcolumn", {
        ctermbg = 0,
        bg = "#555555",
    })

   -- hl("cursorlinenr", {
   --     bg = "none"
   -- })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })
