local M = {}

function M.get()
	return {
		LeapMatch = {
			fg = O.transparent_background and C.monokai_magenta
				or U.vary_color({ latte = "#222222" }, U.brighten(C.green, 0.3)),
			style = { "underline", "nocombine", O.transparent_background and "bold" or nil },
		},
		LeapLabelPrimary = {
			fg = O.transparent_background and C.green or U.vary_color({ latte = "#222222" }, C.darkest_green),
			bg = O.transparent_background and C.none
				or U.vary_color({ latte = U.brighten(C.monokai_red, 0.4) }, U.brighten(C.green, 0.3)),
			style = { "nocombine", O.transparent_background and "bold" or nil },
		},
		LeapLabelSecondary = {
			fg = O.transparent_background and C.monokai_blue or U.vary_color({ latte = "#222222" }, C.darkest_green),
			bg = O.transparent_background and C.none
				or U.vary_color({ latte = U.brighten(C.monokai_blue, 0.3) }, C.monokai_blue),
			style = { "nocombine", O.transparent_background and "bold" or nil },
		},
		LeapBackdrop = { fg = O.transparent_background and C.tiffany or C.none },
	}
end

return M
