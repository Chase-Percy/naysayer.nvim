local M = {}

function M.get()
	return {
		FidgetTask = {
			bg = O.transparent_background and C.none or C.darkest_green,
			fg = C.brown,
		},
		FidgetTitle = { fg = C.monokai_blue },
	}
end

return M
