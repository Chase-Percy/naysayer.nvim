return function(flavour)
	local C = require("catppuccin.palettes").get_palette(flavour)
	local O = require("catppuccin").options
	local catppuccin = {}

	local transparent_bg = O.transparent_background and "NONE" or C.darkest_green

	catppuccin.normal = {
		a = { bg = C.blue, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.blue },
		c = { bg = transparent_bg, fg = C.brown },
	}

	catppuccin.insert = {
		a = { bg = C.green, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.green },
	}

	catppuccin.terminal = {
		a = { bg = C.green, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.green },
	}

	catppuccin.command = {
		a = { bg = C.monokai_orange, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.monokai_orange },
	}

	catppuccin.visual = {
		a = { bg = C.monokai_violet, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.monokai_violet },
	}

	catppuccin.replace = {
		a = { bg = C.red, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.red },
	}

	catppuccin.inactive = {
		a = { bg = transparent_bg, fg = C.blue },
		b = { bg = transparent_bg, fg = C.dark_green, gui = "bold" },
		c = { bg = transparent_bg, fg = C.tiffany },
	}

	return catppuccin
end
