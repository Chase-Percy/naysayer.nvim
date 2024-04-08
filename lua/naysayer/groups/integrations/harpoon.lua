local M = {}

function M.get()
	return {
		HarpoonWindow = { fg = C.brown, bg = O.transparent_background and C.none or C.darkest_green },
		HarpoonBorder = { fg = C.blue },
	}
end

return M
