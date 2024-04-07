local M = {}

function M.get()
	return O.transparent_background and {
		TreesitterContextBottom = { sp = C.dim, style = { "underline" } },
	} or {
		TreesitterContextBottom = {
			sp = C.darker_green,
			style = { "underline" },
		},
		TreesitterContextLineNumber = {
			fg = C.dark_green,
			bg = C.darkest_green,
		},
	}
end

return M
