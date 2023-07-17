-- Load libraries
local awful = require("awful")
local ruled = require("ruled")

-- Create a rules table
local rules = ruled.clientrules

-- Define client rules
rules {
    -- All clients will match this rule.
    {
        rule = {},
        properties = {
            focus = awful.client.focus.filter,
            raise = true,
            keys = keybindings,
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap + awful.placement.no_offscreen,
            size_hints_honor = false
        }
    },

    -- Floating clients
    {
        rule_any = {
            instance = {
                "popup",
            },
            class = {
                "Pinentry",
                "Arandr",
                "Blueman-manager",
                "Gpick",
                "Kruler",
                "Sxiv",
                "Tor Browser",
                "Wpa_gui",
                "veromix",
                "xtightvncviewer"
            },
            name = {
                "Event Tester", -- xev.
            },
            role = {
                "AlarmWindow",
                "ConfigManager",
                "pop-up",
            }
        },
        properties = { floating = true }
    },

    -- Centered clients
    {
        rule_any = {
            type = {
                "dialog",
            },
            class = {
                "Wicd-client.py",
                "calendar.google.com"
            },
            name = {
                "Steam Guard",
            },
            role = {
                "GtkFileChooserDialog",
                "conversation",
            }
        },
        properties = { placement = awful.placement.centered }
    },

    -- Fullscreen clients
    {
        rule_any = {
            class = {
                "Cairo-clock",
                "mpv"
            },
        },
        properties = { fullscreen = true }
    }
}

-- Export the rules table
return rules
