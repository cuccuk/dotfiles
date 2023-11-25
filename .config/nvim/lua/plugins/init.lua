require "lazy".setup(
  {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope.nvim",
      config = function() require "telescope".setup() end
    },
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
