vim.g.mapleader = " "
local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs)
end

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

map("n", "<leader>hl", ":noh<cr>")
map("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>")
map("n", "<leader>lz", ":Lazy<cr>")
map("n", "<leader>nt", ":NvimTreeToggle<cr>")
map("n", "<leader>nf", ":NvimTreeFocus<cr>")

map("n", "<leader>ff", ":Telescope find_files<cr>")
map("n", "<leader>aa", ":Telescope find_files hidden=true<cr>")
map("n", "<leader>gg", ":Telescope live_grep<cr>")
map("n", "<leader>bb", ":Telescope buffers<cr>")
map("n", "<leader>hh", ":Telescope help_tags<cr>")
map("n", "<leader>oo", ":Telescope oldfiles<cr>")
map("n", "<leader>zz", ":Telescope current_buffer_fuzzy_find<cr>")

map("n", "<Tab>", require("ui.tabline").bufn)
map("n", "<S-Tab>", require("ui.tabline").bufp)
map("n", "<leader>bc", require("ui.tabline").bufc)
map("n", "<leader>bo", require("ui.tabline").bufo)

map("n", "<leader>te", ":tabe<cr>")
map("n", "<leader>tc", ":tabc<cr>")
map("n", "<leader>to", ":tabo<cr>")
