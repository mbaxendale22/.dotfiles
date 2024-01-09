return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "Visual", { bg = "#d0d0d0" })
			vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#b48ead" })
		end,
	},
}

