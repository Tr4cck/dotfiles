local wezterm = require("wezterm")
local config = {}

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Frappe"
	else
		return "Catppuccin Latte"
	end
end

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 16.0
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

return config
