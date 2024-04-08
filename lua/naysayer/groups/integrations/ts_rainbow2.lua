local M = {}

function M.get()
	return {
		TSRainbowRed = { fg = C.red },
		TSRainbowYellow = { fg = C.yellow },
		TSRainbowBlue = { fg = C.blue },
		TSRainbowOrange = { fg = C.monokai_orange },
		TSRainbowGreen = { fg = C.green },
		TSRainbowViolet = { fg = C.monokai_violet },
		TSRainbowCyan = { fg = C.monokai_cyan },
	}
end

return M
