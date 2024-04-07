local M = {}

function M.get()
	return {
		IlluminatedWordText = { bg = U.darken(C.dark_green, 0.7, C.darkest_green) },
		IlluminatedWordRead = { bg = U.darken(C.dark_green, 0.7, C.darkest_green) },
		IlluminatedWordWrite = {
			bg = U.darken(C.dark_green, 0.7, C.darkest_green),
			style = O.integrations.illuminate.lsp and { "standout" } or {},
		},
	}
end

return M
