return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
            vim.api.nvim_set_hl(0, "Visual", { bg = "#eba0ac" })
            vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#89b4fa" })
            vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#fab387" })
		end,
	},
}

