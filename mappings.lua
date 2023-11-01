local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<C-a>"] = "",
    ["<C-u>"] = "",
    ["<C-d>"] = "",
  },
}
-- Your custom mappings
M.abc = {
  n = {
    ["<C-u>"] = { "<C-u>zz", "Move up" },
    ["<C-d>"] = { "<C-d>zz", "Move down" },
    ["<C-n>"] = { ":Telescope git_files <CR>", "Telescope Files" },
    ["<C-k>"] = { ":Telescope live_grep<CR>", "Telescope Live Grep" },
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
