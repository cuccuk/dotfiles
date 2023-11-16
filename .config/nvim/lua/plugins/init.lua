require "lazy".setup(
  {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      config = function() require "telescope".setup() end
    },
    {
      "nvim-tree/nvim-tree.lua",
      lazy = false,
      config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require "nvim-tree".setup {
          renderer = {
            icons = {
              show = {
                file = false,
                folder_arrow = false,
                git = false,
              },
              glyphs = {
                default = "󰈚",
                symlink = "",
                folder = {
                  default = "",
                  empty = "",
                  empty_open = "",
                  open = "",
                  symlink = "",
                  symlink_open = "",
                  arrow_open = "",
                  arrow_closed = "",
                },
                git = {
                  unstaged = "✗",
                  staged = "✓",
                  unmerged = "",
                  renamed = "➜",
                  untracked = "★",
                  deleted = "",
                  ignored = "◌",
                },
              },
            },
          },
        }
      end
    }
  },
  {
    defaults = { lazy = true },
    install = {
      colorscheme = { "idkman" },
    },
  }
)
