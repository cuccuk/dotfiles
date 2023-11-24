require "lazy".setup(
  {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "nvim-telescope/telescope.nvim",
      config = function() require "telescope".setup() end
    },
    {
      "nvim-tree/nvim-tree.lua",
      config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require "nvim-tree".setup {
          renderer = {
            icons = {
              show = {
                folder_arrow = false,
                git = false
              }
            }
          }
        }
      end
    }
  },
  {
    install = {
      colorscheme = { "what" }
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
          ""
        }
      }
    }
  }
)
