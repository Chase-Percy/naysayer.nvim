local M = {}

function M.get()
	return {
		PounceMatch = { bg = U.lighten(C.green, 0.7), fg = C.darkest_green, style = { "bold" } },
		PounceGap = { bg = U.darken(C.green, 0.7), fg = C.darkest_green, style = { "bold" } },
		PounceAccept = { bg = C.monokai_orange, fg = C.darkest_green, style = { "bold" } },
		PounceAcceptBest = { bg = C.monokai_cyan, fg = C.darkest_green, style = { "bold" } },
	}
end

return M
