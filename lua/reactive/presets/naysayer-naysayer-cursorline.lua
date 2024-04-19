local darken = require("naysayer.utils.colors").darken
local palette = require("naysayer.palettes").get_palette "naysayer"

return {
	name = "naysayer-naysayer-cursorline",
	static = {
		winhl = {
			inactive = {
				CursorLine = { bg = darken(palette.light_green, 0.85) },
				CursorLineNr = { bg = darken(palette.light_green, 0.85) },
			},
		},
	},
	modes = {
		i = {
			winhl = {
				CursorLine = { bg = darken(palette.light_green, 0.4) },
				CursorLineNr = { bg = darken(palette.light_green, 0.4) },
			},
		},
		n = {
			winhl = {
				CursorLine = { bg = palette.light_green },
				CursorLineNr = { bg = palette.light_green },
			},
		},
		no = {
			operators = {
				[{ "gu", "gU", "g~", "~" }] = {
					winhl = {
						CursorLine = { bg = palette.light_green },
						CursorLineNr = { bg = palette.light_green },
					},
				},
				-- delete operator
				d = {
					winhl = {
						CursorLine = { bg = darken(palette.light_green, 0.4) },
						CursorLineNr = { bg = darken(palette.light_green, 0.4) },
					},
				},
				-- yank operator
				y = {
					winhl = {
						CursorLine = { bg = darken(palette.light_green, 0.4) },
						CursorLineNr = { bg = darken(palette.light_green, 0.4) },
					},
				},
				-- change operator
				c = {
					winhl = {
						CursorLine = { bg = darken(palette.light_green, 0.5) },
						CursorLineNr = { bg = darken(palette.light_green, 0.5) },
					},
				},
			},
		},
		-- replace mode
		R = {
			winhl = {
				CursorLine = { bg = darken(palette.light_green, 0.5) },
				CursorLineNr = { bg = darken(palette.light_green, 0.5) },
			},
		},
		-- visual mode
		[{ "v", "V", "\x16" }] = {
			winhl = {
				Visual = { bg = darken(palette.light_green, 0.4) },
			},
		},
		-- select mode
		[{ "s", "S", "\x13" }] = {
			winhl = {
				Visual = { bg = darken(palette.light_green, 0.4) },
			},
		},
	},
}
