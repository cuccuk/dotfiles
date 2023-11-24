local function file_name() return
  "%#Normal# " .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":~") .. " "
end
local function mode()
  return "%#Leaf# " .. vim.api.nvim_get_mode().mode .. " "
end
local function line()
  local a = vim.fn.line "."
  local b = vim.fn.line "$"
  local c = math.modf((a / b) * 100) .. tostring "%%"
  c = (a == 1 and "top") or c
  c = (a == b and "bot") or c
  return " " .. c .. " "
end
local function run()
  return table.concat({ mode(), file_name(), "%=", line() })
end
vim.api.nvim_create_autocmd({ "BufEnter", "ModeChanged", "CursorMoved" },
{ callback = function() vim.opt.stl = run() end })
