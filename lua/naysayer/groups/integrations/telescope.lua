local M = {}

function M.get()
	return {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = C.monokai_yellow },
		TelescopeSelection = {
			fg = O.transparent_background and C.monokai_yellow or C.white,
			bg = O.transparent_background and C.none or C.darker_green,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.yellow },
	}
end

return M
