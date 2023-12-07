local mappings = {
  n = {
    ["<C-h>"] = "<C-w>h",
    ["<C-l>"] = "<C-w>l",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",

    ["<leader>hl"] = ":noh<cr>",
    ["<leader>cd"] = ":cd %:p:h<cr>:pwd<cr>",
    ["<leader>lz"] = ":Lazy<cr>",
    ["<leader>ts"] = function()
      if vim.o.bg == "dark" then
        vim.o.bg = "light"
        return
      end
      vim.o.bg = "dark"
    end,

    ["<leader>ff"] = ":Telescope find_files<cr>",
    ["<leader>aa"] = ":Telescope find_files hidden=true<cr>",
    ["<leader>gg"] = ":Telescope live_grep<cr>",
    ["<leader>bb"] = ":Telescope buffers<cr>",
    ["<leader>hh"] = ":Telescope help_tags<cr>",
    ["<leader>oo"] = ":Telescope oldfiles<cr>",
    ["<leader>zz"] = ":Telescope current_buffer_fuzzy_find<cr>",

    ["<Tab>"] = require("ui.tabline").bufn,
    ["<S-Tab>"] = require("ui.tabline").bufp,
    ["<leader>bc"] = ":conf bd<cr>",
    ["<leader>bo"] = require("ui.tabline").bufo,

    ["<leader>te"] = ":tabe<cr>",
    ["<leader>tc"] = ":tabc<cr>",
    ["<leader>to"] = ":tabo<cr>",
  },
}

vim.g.mapleader = " "

for mode in pairs(mappings) do
  for lhs, rhs in pairs(mappings[mode]) do
    vim.keymap.set(mode, lhs, rhs)
  end
end
