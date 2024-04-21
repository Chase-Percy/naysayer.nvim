local M = {}

function M.get()
	return {
		WindowPickerStatusLine = { fg = C.monokai_red, style = { "bold" } },
		WindowPickerStatusLineNC = { fg = C.monokai_red, style = { "bold" } },
		WindowPickerWinBar = { fg = C.monokai_red, style = { "bold" } },
		WindowPickerWinBarNC = { fg = C.monokai_red, style = { "bold" } },
	}
end

return M
