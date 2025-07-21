-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("Fira Code")

-- For example, changing the color scheme:
--config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
config.color_scheme = "Solarized (dark) (terminal.sexy)"

--config.color_scheme = "Solarized Dark"

config.term = "xterm-256color"

config.enable_wayland = false

return config
