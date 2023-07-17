-- Load libraries
local awful = require("awful")

-- Define tag names
local tag_names = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }

-- Define layouts
local layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
    -- Add more layouts here
}

-- Create tags
awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    awful.tag(tag_names, s, layouts[1])
end)
