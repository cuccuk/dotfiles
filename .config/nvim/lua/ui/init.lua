require("ui.statusline")

vim.defer_fn(function()
	if vim.api.nvim_buf_get_name(0) == "" and not vim.bo.mod then
		require("ui.dashboard").run()
	end
end, 0)

vim.opt.tal = "%!v:lua.require('ui.tabline').run()"
