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
  Focused = { fg = theme.black, bg = theme.green },
  Cherry = { fg = theme.red },
  LazyNormal = { fg = theme.fg, bg = theme.bg },
  LazyDimmed = { fg = theme.fg, bg = theme.bg },
  LazyButton = { fg = theme.fg, bg = theme.bg },
  LazyButtonActive = { fg = theme.fg, bg = theme.bg },
  LazyComment = { fg = theme.fg, bg = theme.bg },
  LazyCommit = { fg = theme.fg, bg = theme.bg },
  LazyCommitIssue = { fg = theme.fg, bg = theme.bg },
  LazyCommitScope = { fg = theme.fg, bg = theme.bg },
  LazyCommitType = { fg = theme.fg, bg = theme.bg },
  LazyDimmed = { fg = theme.fg, bg = theme.bg },
  LazyDir = { fg = theme.fg, bg = theme.bg },
  LazyH1 = { fg = theme.fg, bg = theme.bg },
  LazyH2 = { fg = theme.fg, bg = theme.bg },
  LazyLocal = { fg = theme.fg, bg = theme.bg },
  LazyNoCond = { fg = theme.fg, bg = theme.bg },
  LazyNormal = { fg = theme.fg, bg = theme.bg },
  LazyProgressDone = { fg = theme.fg, bg = theme.bg },
  LazyProgressTodo = { fg = theme.fg, bg = theme.bg },
  LazyProp = { fg = theme.fg, bg = theme.bg },
  LazyReasonCmd = { fg = theme.fg, bg = theme.bg },
  LazyReasonEvent = { fg = theme.fg, bg = theme.bg },
  LazyReasonFt = { fg = theme.fg, bg = theme.bg },
  LazyReasonImport = { fg = theme.fg, bg = theme.bg },
  LazyReasonKeys = { fg = theme.fg, bg = theme.bg },
  LazyReasonPlugin = { fg = theme.fg, bg = theme.bg },
  LazyReasonRequire = { fg = theme.fg, bg = theme.bg },
  LazyReasonRuntime = { fg = theme.fg, bg = theme.bg },
  LazyReasonSource = { fg = theme.fg, bg = theme.bg },
  LazyReasonStart = { fg = theme.fg, bg = theme.bg },
  LazySpecial = { fg = theme.fg, bg = theme.bg },
  LazyTaskError = { fg = theme.fg, bg = theme.bg },
  LazyTaskOutput = { fg = theme.fg, bg = theme.bg },
  LazyUrl = { fg = theme.fg, bg = theme.bg },
  LazyValue = { fg = theme.fg, bg = theme.bg },
  TelescopeNormal = { bg = theme.bg },
  TelescopeBorder = { fg = theme.bg, bg = theme.bg },
  NvimTreeNormal = { fg = theme.fg },
  -- NvimTreeSymlink
  -- NvimTreeExecFile
  -- NvimTreeOpenedFile
  -- NvimTreeModifiedFile
  -- NvimTreeSpecialFile
  -- NvimTreeImageFile
  -- NvimTreeFolderName
  -- NvimTreeEmptyFolderName
  -- NvimTreeOpenedFolderName
  -- NvimTreeSymlinkFolderName
  -- NvimTreeRootFolder
  -- NvimTreeFileIcon
  -- NvimTreeOpenedFileIcon
  -- NvimTreeSymlinkIcon
  -- NvimTreeFolderIcon
  -- NvimTreeOpenedFolderIcon
  -- NvimTreeClosedFolderIcon
  -- NvimTreeFolderArrowClosed
  -- NvimTreeFolderArrowOpen
  -- NvimTreeIndentMarker
  -- NvimTreeNormal
  -- NvimTreeNormalFloat
  -- NvimTreeNormalNC

  -- NvimTreeLineNr
  -- NvimTreeWinSeparator
  -- NvimTreeEndOfBuffer
  -- NvimTreePopup
  -- NvimTreeSignColumn

  -- NvimTreeCursorColumn
  -- NvimTreeCursorLine
  -- NvimTreeCursorLineNr

  -- NvimTreeStatusLine
  -- NvimTreeStatusLineNC
  -- NvimTreeCopiedHL
  -- NvimTreeCutHL
  -- NvimTreeBookmark
  -- NvimTreeBookmarkHL
  -- NvimTreeWindowPicker
  -- NvimTreeLiveFilterPrefix
  -- NvimTreeLiveFilterValue
  -- NvimTreeGitDirty
  -- NvimTreeGitStaged
  -- NvimTreeGitMerge
  -- NvimTreeGitRenamed
  -- NvimTreeGitNew
  -- NvimTreeGitDeleted
  -- NvimTreeGitIgnored
  -- NvimTreeFileDirty
  -- NvimTreeFileStaged
  -- NvimTreeFileMerge
  -- NvimTreeFileRenamed
  -- NvimTreeFileNew
  -- NvimTreeFileDeleted
  -- NvimTreeFileIgnored
  -- NvimTreeFolderDirty
  -- NvimTreeFolderStaged
  -- NvimTreeFolderMerge
  -- NvimTreeFolderRenamed
  -- NvimTreeFolderNew
  -- NvimTreeFolderDeleted
  -- NvimTreeFolderIgnored
  -- NvimTreeLspDiagnosticsError
  -- NvimTreeLspDiagnosticsWarning
  -- NvimTreeLspDiagnosticsInformation
  -- NvimTreeLspDiagnosticsHint
  -- NvimTreeLspDiagnosticsErrorText
  -- NvimTreeLspDiagnosticsWarningText
  -- NvimTreeLspDiagnosticsInfoText
  -- NvimTreeLspDiagnosticsHintText
  -- NvimTreeLspDiagnosticsErrorFolderText
  -- NvimTreeLspDiagnosticsWarningFolderText
  -- NvimTreeLspDiagnosticsInfoFolderText
  -- NvimTreeLspDiagnosticsHintFolderText
}

if vim.g.colors_name then
  vim.cmd("hi clear")
  vim.cmd("sy reset")
end

vim.g.colors_name = "idkman"

for name, val in pairs(groups) do
  vim.api.nvim_set_hl(0, name, val)
end
