local Remap = require("bax.keymap")

local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
-- first part is keys you want to map to, prefixed by leader key
-- second part is command you want to map
nnoremap("<leader>pp", "<cmd>Ex<CR>")
nnoremap("<leader>pn", "<cmd>Vexplore<CR>")
inoremap("jk", "<Esc>")

nnoremap("<leader>vs", "<cmd>vsp<CR>")
nnoremap("<leader>hs", "<cmd>sp<CR>")
nnoremap("<leader>xx", "<cmd>exit<CR>>")


--j telescope remaps
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>lc", "<cmd>lua vim.lsp.buf.code_action()<cr>")
nnoremap("<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

-- match brackets
--inoremap("(", "()<Left>")
--inoremap("[", "[]<Left>")
--inoremap("{", "{}<Left>")
--inoremap("'", "''<Left>")
--inoremap('"', '""<Left>')

-- move a line up or down when highlighted
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- insert new line without leaving normal mode
 nnoremap("<Leader>o", "o<Esc>0_D")
 nnoremap("<Leader>O", "O<Esc>0_D")

-- tabs
nnoremap("<leader>nt", ":tabnew<cr>")
nnoremap("<leader>xt", ":tabc<cr>")
nnoremap("<leader>rt", ":tabnext<cr>")
nnoremap("<leader>lt", ":tabprevious<cr>")

-- Lsp saga, micer UI for lsp functions
nnoremap("K", "<cmd>Lspsaga hover_doc<cr>")
nnoremap("<leader>gd", "<cmd>Lspsaga peek_definition<cr>")
nnoremap("<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>")
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
