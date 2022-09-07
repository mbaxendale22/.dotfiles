
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


local on_attach = function(client)
    -- runs when server is attached to a buffer
     -- keymap "[mode]" "[remap key]", [command], last options sets it to current buffer only (not setting a global keymap)
     vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
     vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
     vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
     vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
     vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
     vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer = 0})
     vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer = 0})

    end


-- config for cmp
vim.opt.completeopt = {"menu", "menuone", "noselect"}
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
  })

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}

require'lspconfig'.sumneko_lua.setup{
    capabilities = capabilities,
--	cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
		},
	},
}

require'lspconfig'.tsserver.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}
