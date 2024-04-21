local M = {}

function M.get()
	return {
		AlphaShortcut = { fg = C.green },
		AlphaHeader = { fg = C.monokai_blue },
		AlphaHeaderLabel = { fg = C.monokai_orange },
		AlphaButtons = { fg = C.grey },
		AlphaFooter = { fg = C.monokai_yellow, style = { "italic" } },
	}
end

return M
