local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local rnotification = require("ruled.notification")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")

local theme = {}

theme.font = "sans 8"

theme.bg_normal = "#000000"
theme.bg_focus = "#000000"
theme.bg_urgent = "#ff0000"
theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#aaaaaa"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.useless_gap = dpi(0)
theme.border_width = dpi(0)
theme.border_color_normal = "#000000"
theme.border_color_active = "#000000"
theme.border_color_marked = "#000000"

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)
theme.icon_theme = nil

rnotification.connect_signal("request::rules", function()
  rrotification.append_rule({
    rule = { urgency = "critical" },
    properties = { bg = "#ff0000", fg = "#ffffff" },
  })
end)

return theme
