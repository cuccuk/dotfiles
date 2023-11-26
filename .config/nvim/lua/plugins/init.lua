require("lazy").setup({
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup()
		end,
	},
	{
		"mhartington/formatter.nvim",
		config = function()
			local util = require("formatter.util")
			require("formatter").setup({
				logging = true,
				log_level = vim.log.levels.WARN,
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
						function()
							if util.get_current_buffer_file_name() == "special.lua" then
								return nil
							end
							return {
								exe = "stylua",
								args = {
									"--search-parent-directories",
									"--stdin-filepath",
									util.escape_path(util.get_current_buffer_file_path()),
									"--",
									"-",
								},
								stdin = true,
							}
						end,
					},
					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
		end,
	},
}, {
	install = {
		colorscheme = { "what" },
	},
	ui = {
		icons = {
			cmd = "",
			config = "",
			event = "",
			ft = "",
			init = "",
			import = "",
			keys = "",
			lazy = "",
			loaded = "",
			not_loaded = "",
			plugin = "",
			runtime = "",
			require = "",
			source = "",
			start = "",
			task = "",
			list = {
				"",
				"",
				"",
				"",
			},
		},
	},
})
