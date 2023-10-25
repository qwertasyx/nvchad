local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<C-a>"] = "",
  },
}

-- Your custom mappings
M.abc = {
  n = {
    -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<C-n>"] = { ":Telescope git_files <CR>", "Telescope Files" },
    ["gf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },

  i = {
    ["<C-s>"] = { "<ESC>:w<CR>", "save file", opts = { nowait = true } },
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    -- ...
  },
}

return M
