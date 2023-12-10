local ruled = require("ruled")
local awful = require("awful")

ruled.client.connect_signal("request::rules", function()
  ruled.client.append_rule({
    id = "global",
    rule = {},
    properties = {
      focus = awful.client.focus.filter,
      raise = true,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap + awful.placement.no_offscreen,
    },
  })
  ruled.client.append_rule({
    rule = { class = "firefox" },
    properties = { screen = 1, tag = "2" },
  })
end)
