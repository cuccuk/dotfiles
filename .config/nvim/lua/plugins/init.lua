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
          renderer = { icons = {
            show = {
              folder_arrow = false,
              git = false
            },
          }, }, }
      end
    }
  },
  {
    defaults = { lazy = true },
    -- install = {
    --   colorscheme = { "what" },
    -- },
  }
)
