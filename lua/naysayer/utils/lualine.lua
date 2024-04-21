return function(flavour)
	local C = require("naysayer.palettes").get_palette(flavour)
	local O = require("naysayer").options
	local naysayer = {}

	local transparent_bg = O.transparent_background and "NONE" or C.darkest_green

	naysayer.normal = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
		c = { bg = transparent_bg, fg = C.brown },
	}

	naysayer.insert = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	naysayer.terminal = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	naysayer.command = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	naysayer.visual = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	naysayer.replace = {
		a = { bg = C.brown, fg = C.darkest_green, gui = "bold" },
		b = { bg = C.darker_green, fg = C.brown },
	}

	naysayer.inactive = {
		a = { bg = transparent_bg, fg = C.monokai_blue },
		b = { bg = transparent_bg, fg = C.dark_green, gui = "bold" },
		c = { bg = transparent_bg, fg = C.tiffany },
	}

	return naysayer
end
