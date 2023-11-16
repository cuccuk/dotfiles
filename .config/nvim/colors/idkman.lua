local colors = {
  dark = {
    bg = "#000000",
    fg = "#ffffff",
    black = "#2b2b2b",
    red = "#e68a8a",
    green = "#9ce68a",
    yellow = "#e6d38a",
    blue = "#8aaee6",
    magenta = "#d38ae6",
    cyan = "#8ae6d3",
    white = "#d8d8d8",
  },
  light = {
    bg = "#ffffff",
    fg = "#000000",
    black = "#141414",
    red = "#b34747",
    green = "#50b347",
    yellow = "#b38b47",
    blue = "#4764b3",
    magenta = "#8b47b3",
    cyan = "#47b38b",
    white = "#b8b8b8",
  }
}

local theme = colors[vim.o.bg]

local groups = {
  Comment = { fg = theme.green },
  Constant = { fg = theme.cyan },
  Identifier = { fg = theme.blue },
  Statement = { fg = theme.red },
  Special = { fg = theme.blue },
  Type = { fg = theme.fg },
  Underlined = { fg = theme.white },
  Error = { fg = theme.red },
  Folded = { fg = theme.black, bg = theme.green },
  LineNr = { fg = theme.white },
  NonText = { fg = theme.black },
  Normal = { fg = theme.fg, bg = theme.bg },
  Pmenu = { fg = theme.fg, bg = theme.black },
  PmenuSel = { fg = theme.black, bg = theme.green },
  PmenuSbar = { bg = theme.black },
  PmenuThumb = { bg = theme.green },
  Search = { fg = theme.black, bg = theme.green },
  StatusLine = { bg = theme.bg },
  StatusLineNC = { fg = theme.bg, bg = theme.bg },
  Visual = { fg = theme.black, bg = theme.green },
  LazyNormal = { fg = theme.fg, bg = theme.bg },
  LazyDimmed = { fg = theme.fg, bg = theme.bg },
  TelescopeNormal = { bg = theme.bg },
  TelescopeBorder = { fg = theme.bg, bg = theme.bg },
  Focused = { fg = theme.black, bg = theme.green },
  Cherry = { fg = theme.red },
}

if vim.g.colors_name then
  vim.cmd("hi clear")
  vim.cmd("sy reset")
end

vim.g.colors_name = "idkman"

for name, val in pairs(groups) do
  vim.api.nvim_set_hl(0, name, val)
end
