local ascii = {
--  "  ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆        ",
--  "   ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤ ⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦      ",
--  "         ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄    ",
--  "          ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀ ⠢⣀⡀⠈⠙⠿    ",
--  "  ⢀      ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀  ",
--  "  ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿  ",
--  " ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾   ",
--  "⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄ ",
--  "⠙⠃   ⣼⣿⡟⠌ ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿⠐⣿⣿⡇ ⠛⠻⢷⣄",
--  "     ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆    ",
--  "      ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃    ",
--  "•        ┓   •",
--  "┓╋┏┓┏┓┏┓┏┣┓┏┓┓",
--  "┗┗┗ ┛ ┗┻┛┛┗┗┻┗",
  "┬┌┬┐┌─┐┬─┐┌─┐┌─┐┬ ┬┌─┐┬",
  "│ │ ├┤ ├┬┘├─┤└─┐├─┤├─┤│",
  "┴ ┴ └─┘┴└─┴ ┴└─┘┴ ┴┴ ┴┴",
}

local win = vim.api.nvim_get_current_win()
local win_height = vim.api.nvim_win_get_height(win)
local win_width = vim.api.nvim_win_get_width(win)
local str_width = vim.fn.strwidth(ascii[1])

for i = 1, 2 do
  table.insert(ascii, 1, string.rep(" ", str_width))
  table.insert(ascii, string.rep(" ", str_width))
end

local lines = math.floor((win_height - #ascii) / 2)
local columns = math.floor((win_width - str_width) / 2)
local padding = string.rep(" ", columns)

for i, v in ipairs(ascii) do
  ascii[i] = padding .. v .. "    "
end

for i = 1, lines do
  table.insert(ascii, 1, "")
  table.insert(ascii, "")
end

vim.defer_fn(function()
  --vim.api.nvim_set_current_buf(vim.api.nvim_create_buf(false, true))
  if vim.api.nvim_buf_get_name(0) == "" and not vim.bo.mod then
    vim.api.nvim_buf_set_lines(0, 0, -1, false, ascii)
    for i = lines, lines + #ascii do
      vim.api.nvim_buf_add_highlight(0, 0, "Leaf", i, columns - 4, -1)
    end
    vim.bo.bl = false
    vim.bo.ma = false
    vim.bo.bt = "nofile"
    vim.wo.nu = false
    vim.wo.rnu = false
    vim.wo.ve = "all"
  end
end, 0)
