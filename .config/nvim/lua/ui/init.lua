require("ui.statusline")
vim.opt.tal = "%!v:lua.require('ui.tabline').run()"

vim.api.nvim_create_autocmd("vimenter", {
  callback = function()
    if vim.api.nvim_buf_get_name(0) == "" and not vim.bo.mod then
      require("ui.dashboard").run()
    end
  end,
})
