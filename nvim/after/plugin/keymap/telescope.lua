local nnoremap = require("bax.keymap").nnoremap

nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>lc", "<cmd>lua vim.lsp.buf.code_action()<cr>")
nnoremap("<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
