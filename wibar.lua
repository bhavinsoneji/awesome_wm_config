-- Load libraries
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")

-- Define theme variables
local theme = {}

-- Wallpaper
theme.wallpaper = "/path/to/wallpaper.jpg"

-- Font
theme.font = "sans 8"

-- Colors
theme.primary = "#3F51B5"
theme.secondary = "#FF4081"
theme.background = "#212121"
theme.foreground = "#FFFFFF"

-- Wibar (Taskbar) settings
theme.wibar = {}
theme.wibar.height = 30
theme.wibar.bg = theme.background
theme.wibar.fg = theme.foreground

-- Taglist settings
theme.taglist = {}
theme.taglist.font = theme.font
theme.taglist.bg_empty = theme.background
theme.taglist.fg_empty = theme.foreground
theme.taglist.bg_occupied = theme.primary
theme.taglist.fg_occupied = theme.foreground
theme.taglist.bg_urgent = theme.secondary
theme.taglist.fg_urgent = theme.foreground

-- Tasklist settings
theme.tasklist = {}
theme.tasklist.font = theme.font
theme.tasklist.bg_normal = theme.background
theme.tasklist.fg_normal = theme.foreground
theme.tasklist.bg_focus = theme.primary
theme.tasklist.fg_focus = theme.foreground
theme.tasklist.bg_urgent = theme.secondary
theme.tasklist.fg_urgent = theme.foreground

-- Prompt settings
theme.prompt = {}
theme.prompt.fg = theme.foreground
theme.prompt.bg = theme.background

-- Layout icons
theme.layout_tile = "/path/to/tile.png"
theme.layout_floating = "/path/to/floating.png"

-- Apply theme
beautiful.init(theme)

-- Export the theme table
return theme
