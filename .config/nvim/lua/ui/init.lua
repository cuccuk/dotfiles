require "ui.statusline"
require "ui.dashboard"
vim.opt.tal = "%!v:lua.require('ui.tabline').run()"
