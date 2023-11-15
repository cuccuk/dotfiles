require "lazy".setup(
  {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      config = function() require "telescope".setup() end
    },
  },
  {
    defaults = { lazy = true },
    install = {
      colorscheme = { "void" },
    },
  }
)
