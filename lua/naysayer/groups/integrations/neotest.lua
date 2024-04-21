local M = {}

function M.get()
	return {
		NeotestPassed = { fg = C.green },
		NeotestFailed = { fg = C.monokai_red },
		NeotestRunning = { fg = C.monokai_yellow },
		NeotestSkipped = { fg = C.monokai_blue },
		NeotestTest = { fg = C.brown },
		NeotestNamespace = { fg = C.monokai_violet },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.monokai_blue },
		NeotestDir = { fg = C.monokai_blue },
		NeotestIndent = { fg = C.light_green },
		NeotestExpandMarker = { fg = C.light_green },
		NeotestAdapterName = { fg = C.monokai_magenta },
		NeotestWinSelect = { fg = C.monokai_blue, style = { "bold" } },
		NeotestMarked = { fg = C.monokai_orange, style = { "bold" } },
		NeotestTarget = { fg = C.monokai_red },
		NeotestUnknown = { fg = C.brown },
	}
end

return M
