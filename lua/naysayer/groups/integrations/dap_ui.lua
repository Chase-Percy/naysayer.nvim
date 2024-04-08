local M = {}

function M.get()
	return {
		DapUIScope = { fg = C.monokai_blue },
		DapUIType = { fg = C.monokai_violet },
		DapUIValue = { fg = C.monokai_blue },
		DapUIVariable = { fg = C.brown },
		DapUIModifiedValue = { fg = C.monokai_orange },
		DapUIDecoration = { fg = C.monokai_blue },
		DapUIThread = { fg = C.green },
		DapUIStoppedThread = { fg = C.monokai_blue },
		DapUISource = { fg = C.grey },
		DapUILineNumber = { fg = C.monokai_blue },
		DapUIFloatBorder = { fg = C.monokai_blue },

		DapUIWatchesEmpty = { fg = C.monokai_magenta },
		DapUIWatchesValue = { fg = C.green },
		DapUIWatchesError = { fg = C.monokai_magenta },

		DapUIBreakpointsPath = { fg = C.monokai_blue },
		DapUIBreakpointsInfo = { fg = C.green },
		DapUIBreakpointsCurrentLine = { fg = C.green, style = { "bold" } },
		DapUIBreakpointsDisabledLine = { fg = C.mint },

		DapUIStepOver = { fg = C.blue },
		DapUIStepInto = { fg = C.blue },
		DapUIStepBack = { fg = C.blue },
		DapUIStepOut = { fg = C.blue },
		DapUIStop = { fg = C.red },
		DapUIPlayPause = { fg = C.green },
		DapUIRestart = { fg = C.green },
		DapUIUnavailable = { fg = C.dark_green },

		DapUIWinSelect = { fg = C.monokai_orange },
	}
end

return M
