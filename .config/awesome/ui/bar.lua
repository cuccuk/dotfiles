local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")

local battery0 = wibox.widget({
  min_value = 0,
  max_value = 100,
  forced_width = 50,
  color = "#9ce68a",
  background_color = "#ffffff",
  widget = wibox.widget.progressbar,
})

local battery1 = wibox.widget({
  widget = wibox.widget.textbox,
})

local battery = wibox.widget({
  {
    {
      battery0,
      battery1,
      spacing = 5,
      layout = wibox.layout.fixed.horizontal,
    },
    margins = 10,
    widget = wibox.container.margin,
  },
  bg = "#000000",
  widget = wibox.container.background,
})

gears.timer({
  timeout = 5,
  autostart = true,
  call_now = true,
  callback = function()
    local file0 = io.open("/sys/class/power_supply/BAT0/capacity", "r")
    local value = file0:read()
    battery0.value = tonumber(value)
    battery1.text = value
    file0:close()
  end,
})

local time = wibox.widget({
  {
    {
      {
        format = "%H:%M",
        refresh = 1,
        widget = wibox.widget.textclock(),
      },
      wibox.widget.textclock("%A %B %d %Y"),
      spacing = 5,
      layout = wibox.layout.fixed.horizontal,
    },
    margins = 10,
    widget = wibox.container.margin,
  },
  bg = "#000000",
  widget = wibox.container.background,
})

screen.connect_signal("request::desktop_decoration", function(s)
  awful.wibar({
    bg = "#00000000",
    position = "top",
    screen = s,
    height = 40,
    margins = 10,
    widget = {
      battery,
      nil,
      time,
      spacing = 10,
      layout = wibox.layout.align.horizontal,
    },
  })
end)
