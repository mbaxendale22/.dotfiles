return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = { file_ignore_patterns = { "node_modules", ".git" } },
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set("n", "<leader>fc", builtin.git_bcommits, {}) -- use <C-v> to open diff to parent in vertical split
            vim.keymap.set("n", "<leader>fj", builtin.jumplist, {})     -- use <C-v> to open diff to parent in vertical split
            vim.keymap.set("n", "<leader>fo", function()
                builtin.oldfiles({ only_cwd = true })
            end)
            vim.keymap.set('n', '<leader>fn', function()
                builtin.find_files({ cwd = "~/.config/nvim" })
            end)
            vim.keymap.set('n', '<C-h>', builtin.help_tags, {})

		end,
	},
}
