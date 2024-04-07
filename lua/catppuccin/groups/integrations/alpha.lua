local M = {}

function M.get()
	return {
		AlphaShortcut = { fg = C.green },
		AlphaHeader = { fg = C.blue },
		AlphaHeaderLabel = { fg = C.monokai_orange },
		AlphaButtons = { fg = C.grey },
		AlphaFooter = { fg = C.yellow, style = { "italic" } },
	}
end

return M
