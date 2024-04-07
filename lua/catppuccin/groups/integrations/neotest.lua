local M = {}

function M.get()
	return {
		NeotestPassed = { fg = C.green },
		NeotestFailed = { fg = C.red },
		NeotestRunning = { fg = C.yellow },
		NeotestSkipped = { fg = C.blue },
		NeotestTest = { fg = C.brown },
		NeotestNamespace = { fg = C.monokai_violet },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.blue },
		NeotestDir = { fg = C.blue },
		NeotestIndent = { fg = C.light_green },
		NeotestExpandMarker = { fg = C.light_green },
		NeotestAdapterName = { fg = C.monokai_magenta },
		NeotestWinSelect = { fg = C.blue, style = { "bold" } },
		NeotestMarked = { fg = C.monokai_orange, style = { "bold" } },
		NeotestTarget = { fg = C.red },
		NeotestUnknown = { fg = C.brown },
	}
end

return M
