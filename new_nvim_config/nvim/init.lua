local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
require("set")
require("remap")
vim.api.nvim_create_autocmd("TextYankPost",{

    callback = function ()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = "100" })
    end,
})
require("lazy").setup("plugins")
