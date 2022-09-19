local Remap = require("bax.keymap")

local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

-- first part is keys you want to map to, prefixed by leader key
-- second part is command you want to map
nnoremap("<leader>pp", "<cmd>Ex<CR>")
nnoremap("<leader>pn", "<cmd>Vexplore<CR>")
inoremap("jk", "<Esc>")

-- splits 
nnoremap("<leader>vs", "<cmd>vsp<CR>")
nnoremap("<leader>hs", "<cmd>sp<CR>")
nnoremap("<leader>xx", "<cmd>exit<CR>>")

-- telescope remaps
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

inoremap("(", "()<Left>")
inoremap("[", "[]<Left>")
inoremap("{", "{}<Left>")
inoremap("'", "''<Left>")
inoremap('"', '""<Left>')

-- move a line up or down when highlighted
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
