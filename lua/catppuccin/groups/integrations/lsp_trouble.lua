local M = {}

function M.get()
	return {
		TroubleText = { fg = C.green },
		TroubleCount = { fg = C.monokai_magenta, bg = O.transparent_background and C.none or C.dark_green },
		TroubleNormal = { fg = C.brown, bg = O.transparent_background and C.none or C.darkest_green },
	}
end

return M
