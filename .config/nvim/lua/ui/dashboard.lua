local M = {}

local ascii = {
  "      ,.                     ",
  "  /,,;';;.  ,;;;..  ,,;.    '",
  ".',''   `::;:' ``;;;;'  `..' ",
  "`      ,,/'     ,,//         ",  
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

M.run = function(buf)
  buf = buf or vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, ascii)
  pcall(function()
    for i = lines, lines + #ascii do
      vim.api.nvim_buf_add_highlight(buf, 0, "Leaf", i, columns - 4, -1)
    end
  end)
  vim.api.nvim_create_autocmd({ "winresized", "insertenter" }, {
    callback = function()
      if vim.api.nvim_get_current_buf() == buf then
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "" })
      end
    end,
  })
  vim.opt_local.bl = false
  vim.opt_local.bt = "nofile"
  vim.opt_local.nu = false
  vim.opt_local.rnu = false
  vim.opt_local.ve = "all"
end

return M
