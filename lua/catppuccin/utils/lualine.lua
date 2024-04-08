return function(flavour)
	local C = require("catppuccin.palettes").get_palette(flavour)
	local O = require("catppuccin").options
	local catppuccin = {}

	local transparent_bg = O.transparent_background and "NONE" or C.darkest_green

	catppuccin.normal = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
		c = { bg = transparent_bg, fg = C.brown },
	}

	catppuccin.insert = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	catppuccin.terminal = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	catppuccin.command = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	catppuccin.visual = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	catppuccin.replace = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	catppuccin.inactive = {
		a = { bg = transparent_bg, fg = C.blue },
		b = { bg = transparent_bg, fg = C.dark_green, gui = "bold" },
		c = { bg = transparent_bg, fg = C.tiffany },
	}

	return catppuccin
end
