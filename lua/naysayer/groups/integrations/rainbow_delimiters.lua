local M = {}

function M.get()
	return {
		RainbowDelimiterRed = { fg = C.red },
		RainbowDelimiterYellow = { fg = C.yellow },
		RainbowDelimiterBlue = { fg = C.blue },
		RainbowDelimiterOrange = { fg = C.monokai_orange },
		RainbowDelimiterGreen = { fg = C.green },
		RainbowDelimiterViolet = { fg = C.monokai_violet },
		RainbowDelimiterCyan = { fg = C.monokai_cyan },
	}
end

return M
