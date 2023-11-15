local function file_name() return
  "%#Normal# " .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":~") .. " "
end
local function mode()
  return "%#Focused# " .. vim.api.nvim_get_mode().mode .. " "
end
local function line()
  return "%#Focused# " .. vim.fn.line "." .. "/" .. vim.fn.line "$" .. " "
end
local function run()
  return table.concat({ mode(), file_name(), "%=", line() })
end
vim.api.nvim_create_autocmd({ "BufEnter", "ModeChanged", "CursorMoved" },
{ callback = function() vim.opt.stl = run() end })
