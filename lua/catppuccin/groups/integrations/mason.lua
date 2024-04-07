local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.grey
	local fg = O.transparent_background and C.grey or C.darkest_green

	local secondary_bg = O.transparent_background and C.none or C.blue
	local secondary_fg = O.transparent_background and C.blue or C.darkest_green

	local muted_bg = O.transparent_background and C.none or C.tiffany
	local muted_fg = O.transparent_background and C.tiffany or C.darkest_green

	return {
		MasonHeader = { fg = fg, bg = bg, style = { "bold" } },
		MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, style = { "bold" } },

		MasonHighlight = { fg = C.green },
		MasonHighlightBlock = {
			bg = O.transparent_background and C.none or C.green,
			fg = O.transparent_background and C.green or C.darkest_green,
		},
		MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },

		MasonHighlightSecondary = { fg = C.monokai_violet },
		MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
		MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },

		MasonMuted = { fg = C.tiffany },
		MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
		MasonMutedBlockBold = { bg = C.yellow, fg = C.darkest_green, bold = true },

		MasonError = { fg = C.red },

		MasonHeading = { fg = C.grey, bold = true },
	}
end

return M
