local M = {}

M.bufi = function(bufnr)
  for i, v in ipairs(vim.g.bufs) do
    if v == bufnr then return i end
  end
end

M.bufn = function()
  local bufs, current_buf_i = vim.g.bufs, M.bufi(vim.api.nvim_get_current_buf())
  if not current_buf_i then vim.cmd("b" .. bufs[1]) return end
  vim.cmd(current_buf_i == #bufs and "b" .. bufs[1] or "b" .. bufs[current_buf_i + 1])
end

M.bufp = function()
  local bufs, current_buf_i = vim.g.bufs, M.bufi(vim.api.nvim_get_current_buf())
  if not current_buf_i then vim.cmd("b" .. bufs[1]) return end
  vim.cmd(current_buf_i == 1 and "b" .. bufs[#bufs] or "b" .. bufs[current_buf_i - 1])
end

M.bufc = function(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  vim.cmd("bd!" .. bufnr)
end

M.bufo = function()
  for _, bufnr in ipairs(vim.g.bufs) do
    if bufnr ~= vim.api.nvim_get_current_buf() then
      M.bufc(bufnr)
    end
  end
  vim.cmd("redrawt")
end

local bufs = {}
for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
  if vim.bo[bufnr].bl then table.insert(bufs, bufnr) end
end
vim.g.bufs = bufs

vim.api.nvim_create_autocmd({ "bufadd", "bufenter" }, {
  callback = function(args)
    local bufs = vim.g.bufs
    if not vim.tbl_contains(bufs, args.buf) and vim.bo[args.buf].bl then
      table.insert(bufs, args.buf)
      vim.g.bufs = bufs
    end
  end,
})

vim.api.nvim_create_autocmd("bufdelete", {
  callback = function(args)
    local bufs = vim.g.bufs
    if bufs then
      for i, buf in ipairs(bufs) do
        if buf == args.buf then
          table.remove(bufs, i)
          vim.g.bufs = bufs
          break
        end
      end
    end
  end,
})

M.buffer = function(bufnr)
  if #vim.api.nvim_buf_get_name(bufnr) ~= 0 then
    name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":t")
  else name = "no name" end
  local red = vim.bo[bufnr].mod and " + " or " - "
  local green = ""
  name = #name > 15 and string.sub(name, 1, 15) .. ".." or name
  name = name .. string.rep(" ", 17 - #name)
  if vim.api.nvim_get_current_buf() == bufnr then
    green = "%#Pmenu# " .. name .. " "
  else
    green = "%#Normal# " .. name .. " " .. "%#Cherry#"
  end
  name = green .. red
  return name
end

M.buffers = function()
  local keep, bufs = false, {}
  for _, bufnr in ipairs(vim.g.bufs) do
    if vim.bo[bufnr].bl then
      if #bufs > 4 then if keep then break end table.remove(bufs, 1) end
      if bufnr == vim.api.nvim_get_current_buf() then keep = true end
      table.insert(bufs, M.buffer(bufnr))
    end
  end
  return table.concat(bufs)
end

M.tabs = function()
  local tabs, keep, green = {}, false, ""
  for _, tabnr in ipairs(vim.api.nvim_list_tabpages()) do
    if #tabs > 4 then if keep then break end table.remove(tabs, 1) end
    if tabnr == vim.api.nvim_get_current_tabpage() then keep = true end
    green = tabnr == vim.api.nvim_get_current_tabpage() and "%#Pmenu#" or "%#Normal#"
    tabnr = green .. " " .. tabnr .. " "
    table.insert(tabs, tabnr)
  end
  return table.concat(tabs)
end

M.run = function() return table.concat({ M.buffers(), "%#Normal#%=", M.tabs() }) end

return M
