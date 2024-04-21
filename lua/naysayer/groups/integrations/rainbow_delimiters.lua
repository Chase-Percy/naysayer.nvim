local M = {}

function M.get()
	return {
		RainbowDelimiterRed = { fg = C.monokai_red },
		RainbowDelimiterYellow = { fg = C.monokai_yellow },
		RainbowDelimiterBlue = { fg = C.monokai_blue },
		RainbowDelimiterOrange = { fg = C.monokai_orange },
		RainbowDelimiterGreen = { fg = C.green },
		RainbowDelimiterViolet = { fg = C.monokai_violet },
		RainbowDelimiterCyan = { fg = C.monokai_cyan },
	}
end

return M
