local colors = {
  bg = "#000000",
  fg = "#ffffff",
  color0 = "#141414",
  color1 = "#b34747",
  color2 = "#50b347",
  color3 = "#b38b47",
  color4 = "#4764b3",
  color5 = "#8b47b3",
  color6 = "#47b38b",
  color7 = "#b8b8b8",
  color8 = "#2b2b2b",
  color9 = "#e68a8a",
  color10 = "#9ce68a",
  color11 = "#e6d38a",
  color12 = "#8aaee6",
  color13 = "#d38ae6",
  color14 = "#8ae6d3",
  color15 = "#d8d8d8",
}

local theme = {
  dark = {
    -- syntax
    Comment = { fg = colors.color10 },
    Constant = { fg = colors.color14 },
    Identifier = { fg = colors.color12 },
    Statement = { fg = colors.color9 },
    Special = { fg = colors.color12 },
    Type = { fg = colors.fg },
    Underlined = { fg = colors.color15 },
    Error = { fg = colors.color9 },
    -- highlight groups
    Folded = { fg = colors.color8, bg = colors.color10 },
    LineNr = { fg = colors.color15 },
    NonText = { fg = colors.color8 },
    Normal = { fg = colors.fg, bg = colors.bg },
    Pmenu = { fg = colors.fg, bg = colors.color8 },
    PmenuSel = { fg = colors.color8, bg = colors.color10 },
    PmenuSbar = { bg = colors.color8 },
    PmenuThumb = { bg = colors.color10 },
    Search = { fg = colors.color8, bg = colors.color10 },
    StatusLine = { bg = colors.bg },
    StatusLineNC = { fg = colors.bg, bg = colors.bg },
    Visual = { fg = colors.color8, bg = colors.color10 },
    -- plugins
    LazyNormal = { fg = colors.fg, bg = colors.bg },
    TelescopeNormal = { bg = colors.bg },
    TelescopeBorder = { fg = colors.bg, bg = colors.bg },
    -- ui
    Focused = { fg = colors.color8, bg = colors.color10 },
    Cherry = { fg = colors.color9 },
  },
  light = {
    -- syntax
    Comment = { fg = colors.color2 },
    Constant = { fg = colors.color6 },
    Identifier = { fg = colors.color4 },
    Statement = { fg = colors.color1 },
    Special = { fg = colors.color4 },
    Type = { fg = colors.bg },
    Underlined = { fg = colors.color7 },
    Error = { fg = colors.color1 },
    -- highlight groups
    Folded = { fg = colors.color0, bg = colors.color2 },
    LineNr = { fg = colors.color7 },
    NonText = { fg = colors.color0 },
    Normal = { fg = colors.bg, bg = colors.fg },
    Pmenu = { fg = colors.bg, bg = colors.color0 },
    PmenuSel = { fg = colors.color0, bg = colors.color2 },
    PmenuSbar = { bg = colors.color0 },
    PmenuThumb = { bg = colors.color2 },
    Search = { fg = colors.color0, bg = colors.color2 },
    StatusLine = { bg = colors.fg },
    StatusLineNC = { fg = colors.fg, bg = colors.bg },
    Visual = { fg = colors.color0, bg = colors.color2 },
    -- plugins
    LazyNormal = { fg = colors.bg, bg = colors.fg },
    TelescopeNormal = { bg = colors.fg },
    TelescopeBorder = { fg = colors.fg, bg = colors.fg },
    -- ui
    Focused = { fg = colors.color0, bg = colors.color2 },
    Cherry = { fg = colors.color1 },
  }
}

if vim.g.colors_name then
  vim.cmd("hi clear")
  vim.cmd("sy reset")
end

vim.g.colors_name = "idkman"

for name, val in pairs(theme[vim.o.bg]) do
  vim.api.nvim_set_hl(0, name, val)
end
