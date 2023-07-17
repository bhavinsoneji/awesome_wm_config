-- Load libraries
local gears = require("gears")
local awful = require("awful")

-- Define mod key
local modkey = "Mod4"

-- Key bindings
local keybindings = gears.table.join(
    -- Window navigation
    awful.key({ modkey }, "h", function()
        awful.client.focus.bydirection("left")
    end, { description = "Focus left", group = "Client" }),
    awful.key({ modkey }, "j", function()
        awful.client.focus.bydirection("down")
    end, { description = "Focus down", group = "Client" }),
    awful.key({ modkey }, "k", function()
        awful.client.focus.bydirection("up")
    end, { description = "Focus up", group = "Client" }),
    awful.key({ modkey }, "l", function()
        awful.client.focus.bydirection("right")
    end, { description = "Focus right", group = "Client" }),

    -- Window manipulation
    awful.key({ modkey, "Shift" }, "h", function()
        awful.client.swap.bydirection("left")
    end, { description = "Swap with client to the left", group = "Client" }),
    awful.key({ modkey, "Shift" }, "j", function()
        awful.client.swap.bydirection("down")
    end, { description = "Swap with client below", group = "Client" }),
    awful.key({ modkey, "Shift" }, "k", function()
        awful.client.swap.bydirection("up")
    end, { description = "Swap with client above", group = "Client" }),
    awful.key({ modkey, "Shift" }, "l", function()
        awful.client.swap.bydirection("right")
    end, { description = "Swap with client to the right", group = "Client" }),

    -- Launch applications
    awful.key({ modkey }, "Return", function()
        awful.spawn(terminal)
    end, { description = "Open terminal", group = "Applications" }),
    awful.key({ modkey }, "e", function()
        awful.spawn("nautilus")
    end, { description = "Open file manager", group = "Applications" }),
    awful.key({ modkey }, "b", function()
        awful.spawn("firefox")
    end, { description = "Open web browser", group = "Applications" }),

    -- Awesome WM controls
    awful.key({ modkey, "Control" }, "r", awesome.restart,
        { description = "Restart Awesome WM", group = "Awesome" }),
    awful.key({ modkey, "Shift" }, "q", awesome.quit,
        { description = "Quit Awesome WM", group = "Awesome" })
)

-- Set key bindings
root.keys(keybindings)

-- Export the keybindings table
return keybindings
