local M = {}

function M.get()
	return {
		LightspeedLabel = { fg = C.monokai_red, style = { "bold", "underline" } },
		LightspeedLabelDistant = {
			fg = U.vary_color({ latte = C.monokai_blue }, C.monokai_blue),
			style = { "bold", "underline" },
		},
		LightspeedShortcut = {
			fg = "#ffffff",
			bg = U.increase_saturation(C.monokai_red, 0.7),
			style = { "bold" },
		},
		LightspeedMaskedChar = {
			fg = U.vary_color(
				{ latte = U.lighten(C.monokai_magenta, 0.7, C.brown) },
				U.darken(C.monokai_magenta, 0.7, C.darkest_green)
			),
		},
		LightspeedUnlabeledMatch = { fg = C.brown, style = { "bold" } },
		LightspeedGreyWash = { link = "Comment" },
		LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedOneCharMatch = { link = "LightspeedShortcut" },
		LightspeedPendingOpArea = { link = "IncSearch" },
		LightspeedCursor = { link = "Cursor" },
	}
end

return M
