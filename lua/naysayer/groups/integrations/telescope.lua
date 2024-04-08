local M = {}

function M.get()
	if O.integrations.telescope.style == "nvchad" then
		return {
			TelescopeBorder = {
				fg = O.transparent_background and C.blue or C.darkest_green,
				bg = O.transparent_background and C.none or C.darkest_green,
			},
			TelescopeMatching = { fg = C.yellow },
			TelescopeNormal = {
				bg = O.transparent_background and C.none or C.darkest_green,
			},
			TelescopePromptBorder = {
				fg = O.transparent_background and C.blue or C.darker_green,
				bg = O.transparent_background and C.none or C.darker_green,
			},
			TelescopePromptNormal = {
				fg = C.brown,
				bg = O.transparent_background and C.none or C.darker_green,
			},
			TelescopePromptPrefix = {
				fg = C.monokai_yellow,
				bg = O.transparent_background and C.none or C.darker_green,
			},
			TelescopePreviewTitle = {
				fg = O.transparent_background and C.green or C.darkest_green,
				bg = O.transparent_background and C.none or C.green,
			},
			TelescopePromptTitle = {
				fg = O.transparent_background and C.red or C.darkest_green,
				bg = O.transparent_background and C.none or C.red,
			},
			TelescopeResultsTitle = {
				fg = O.transparent_background and C.grey or C.darkest_green,
				bg = O.transparent_background and C.none or C.grey,
			},
			TelescopeSelection = {
				fg = O.transparent_background and C.monokai_yellow or C.brown,
				bg = O.transparent_background and C.none or C.darker_green,
				style = { "bold" },
			},
			TelescopeSelectionCaret = { fg = C.monokai_yellow },
		}
	end

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
