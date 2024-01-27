return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
            ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
            ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
            ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
            ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

            ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
            ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

            ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
            ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

            ["af"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
            ["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>sa"] = "@parameter.inner", -- swap parameters/argument with next
            ["<leader>sf"] = "@function.outer", -- swap function with next
          },
          swap_previous = {
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["<leader>nf"] = { query = "@function.outer", desc = "Next method/function def start" },
            ["]c"] = { query = "@class.outer", desc = "Next class start" },
            ["<leader>ni"] = { query = "@conditional.outer", desc = "Next conditional start" },
            ["<leader>nl"] = { query = "@loop.outer", desc = "Next loop start" },

          },
          goto_next_end = {
          },
          goto_previous_start = {
            ["<leader>pf"] = { query = "@function.outer", desc = "Prev method/function def start" },
            ["[c"] = { query = "@class.outer", desc = "Prev class start" },
            ["<leader>pi"] = { query = "@conditional.outer", desc = "Prev conditional start" },
            ["<leader>pl"] = { query = "@loop.outer", desc = "Prev loop start" },
          },
          goto_previous_end = {
          },
        },
      },
    })
    end
}
