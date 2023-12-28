local theme = {
  dark = {
    bg0 = "#000000",
    bg1 = "#111111",
    fg0 = "#ffffff",
    fg1 = "#000000",
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
    bg0 = "#ffffff",
    bg1 = "#dedede",
    fg0 = "#000000",
    fg1 = "#000000",
    black = "#141414",
    red = "#b34747",
    green = "#50b347",
    yellow = "#b38b47",
    blue = "#4764b3",
    magenta = "#8b47b3",
    cyan = "#47b38b",
    white = "#b8b8b8",
  },
}

local colors = theme[vim.o.bg]

local groups = {
  SpecialKey = {},
  TermCursor = { fg = colors.bg0, bg = colors.fg0 },
  NonText = {},
  Directory = { fg = colors.magenta },
  ErrorMsg = {},
  Search = { fg = colors.bg0, bg = colors.red },
  MoreMsg = {},
  LineNr = {},
  CursorLineNr = {},
  Question = {},
  Title = {},
  Visual = { fg = colors.bg0, bg = colors.blue },
  WarningMsg = {},
  WildMenu = {},
  Folded = {},
  FoldColumn = {},
  DiffAdd = {},
  DiffChange = {},
  DiffDelete = {},
  DiffText = {},
  SignColumn = {},
  Conceal = {},
  SpellBad = {},
  SpellCap = {},
  SpellRare = {},
  SpellLocal = {},
  Pmenu = { fg = colors.bg0, bg = colors.blue },
  PmenuSel = {},
  PmenuSbar = { bg = colors.bg1 },
  PmenuThumb = { bg = colors.yellow },
  CursorColumn = { fg = colors.bg0, bg = colors.magenta },
  CursorLine = { bg = colors.bg0 },
  ColorColumn = {},
  NormalNC = {},
  MsgSeparator = {},
  WinBar = {},
  Cursor = { bg = colors.fg },
  lCursor = {},
  Normal = { fg = colors.fg0, bg = colors.bg0 },
  FloatShadow = {},
  FloatShadowThrough = {},
  RedrawDebugNormal = {},
  RedrawDebugClear = {},
  RedrawDebugComposed = {},
  RedrawDebugRecompose = {},
  Error = { fg = colors.red },
  Todo = {},
  Constant = { fg = colors.green },
  Identifier = { fg = colors.blue },
  Statement = { fg = colors.red },
  PreProc = { fg = colors.yellow },
  Type = { fg = colors.magenta },
  Special = { fg = colors.red },
  DiagnosticError = {},
  DiagnosticWarn = {},
  DiagnosticInfo = {},
  DiagnosticHint = {},
  DiagnosticOk = {},
  DiagnosticUnderlineError = {},
  DiagnosticUnderlineWarn = {},
  DiagnosticUnderlineInfo = {},
  DiagnosticUnderlineHint = {},
  DiagnosticUnderlineOk = {},
  DiagnosticDeprecated = {},
  Comment = { fg = colors.green },
  Leaf = { fg = colors.fg1, bg = colors.green },
  Cherry = { link = "Special" },
  TelescopeNormal = { fg = colors.fg0, bg = colors.bg1 },
  TelescopeBorder = { fg = colors.bg1, bg = colors.bg1 },
  TelescopeSelection = { link = "Identifier" },
  LazyButton = { link = "TelescopeNormal" },
  LazySpecial = { fg = colors.fg0 },
  LazyButtonActive = { fg = colors.green, bg = colors.bg1 },
  LazyNormal = { link = "TelescopeNormal" },
}

if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "what"

for name, val in pairs(groups) do
  vim.api.nvim_set_hl(0, name, val)
end
