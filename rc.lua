-- Load libraries
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

-- Load theme
dofile(gears.filesystem.get_configuration_dir() .. "/theme.lua")

-- Load keybindings
dofile(gears.filesystem.get_configuration_dir() .. "/keybindings.lua")

-- Load tags
dofile(gears.filesystem.get_configuration_dir() .. "/tags.lua")

-- Load wibar
dofile(gears.filesystem.get_configuration_dir() .. "/wibar.lua")

-- Load client rules
dofile(gears.filesystem.get_configuration_dir() .. "/rules.lua")

-- ... Other configurations ...

-- Rest of your rc.lua file
