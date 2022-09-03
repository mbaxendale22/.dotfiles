local Remap = require("bax.keymap")

local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap
-- first part is keys you want to map to, prefixed by leader key 
-- second part is command you want to map
nnoremap("<leader>pv", "<cmd>Ex<CR>")
inoremap("jk", "<Esc>") 
