
local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("Lua Snippets", { clear = true })
local file_pattern =  "*.tsx"

local function cs(trigger, nodes, opts) --{{{
	local snippet = s(trigger, nodes)
	local target_table = snippets

	local pattern = file_pattern
	local keymaps = {}

	if opts ~= nil then
		-- check for custom pattern
		if opts.pattern then
			pattern = opts.pattern
		end

		-- if opts is a string
		if type(opts) == "string" then
			if opts == "auto" then
				target_table = autosnippets
			else
				table.insert(keymaps, { "i", opts })
			end
		end

		-- if opts is a table
		if opts ~= nil and type(opts) == "table" then
			for _, keymap in ipairs(opts) do
				if type(keymap) == "string" then
					table.insert(keymaps, { "i", keymap })
				else
					table.insert(keymaps, keymap)
				end
			end
		end

		-- set autocmd for each keymap
		if opts ~= "auto" then
			for _, keymap in ipairs(keymaps) do
				vim.api.nvim_create_autocmd("BufEnter", {
					pattern = pattern,
					group = group,
					callback = function()
						vim.keymap.set(keymap[1], keymap[2], function()
							ls.snip_expand(snippet)
						end, { noremap = true, silent = true, buffer = true })
					end,
				})
			end
		end
	end

	table.insert(target_table, snippet) -- insert snippet into appropriate table
end --}}}

-- Start Refactoring --

-- CONSOLE LOG --{{{
     local consoleLog = s("clg", fmt([[
    
     console.log({})
    
     ]],
     {
         -- each of these nodes corresponds to an empty table in the format string in [[]]
         -- to escape {} use double ie., {{}}
         i(1, "to print"),
     }))


    table.insert(snippets, consoleLog) --}}}

-- ARROW FUNCTION --{{{
     local arrow_func = s("arf", fmt([[
    
     const {} = ({}) => {{
         {}
     }}
    
     ]],
     {
         -- each of these nodes corresponds to an empty table in the format string in [[]]
         -- to escape {} use double ie., {{}}
         i(1, "funcName"),
         i(2, "params"),
         i(3, "body"),
     }))


    table.insert(snippets, arrow_func) --}}}

    --FUNCTION -- {{{
    local func = s("func", fmt([[

    function {}({}) {{
        {}
    }}

    ]],
    {
        -- each of these nodes corresponds to an empty table in the format string in [[]]
        -- to escape {} use double ie., {{}}
        i(1, "funcName"),
        i(2, "params"),
        i(3, "body"),
    }))


    table.insert(snippets, func) --}}}

    --REACT NATIVE COMPONENT TEMPLATE -- {{{
    local react_native = s("rnc", fmt([[

    import React from 'react'
    import {{ Text, View, StyleSheet }} from 'react-native' 

    type Props = {{

    }}

    export const {} = (props: Props) => {{

        const {{}} = Props

        return (


        )

    }}

    ]],
    {
        -- each of these nodes corresponds to an empty table in the format string in [[]]
        -- to escape {} use double ie., {{}}
        i(1, "componentName"),
    }))


    table.insert(snippets, react_native) --}}}

    --FILTER -- {{{
    local filter = s("filter", fmt([[

    const {} = {}.filter(({}) => {})

    ]],
    {
        -- each of these nodes corresponds to an empty table in the format string in [[]]
        -- to escape {} use double ie., {{}}
        i(1, "varName"),
        i(2, "array"),
        i(3, "element"),
        i(4, "body"),
    }))


    table.insert(snippets, filter) --}}}

    --USE EFFECT -- {{{
    local use_effect = s("useEffect", fmt([[

    useEffect(() => {{
    
        {}

    }},[{}])

    ]],
    {
        -- each of these nodes corresponds to an empty table in the format string in [[]]
        -- to escape {} use double ie., {{}}
        i(1, "body"),
        i(2, "dependencies"),
    }))


    table.insert(snippets, use_effect) --}}}

-- End Refactoring --

return snippets, autosnippets
