local M = {}

function M.get()
	return {
		TSRainbowRed = { fg = C.monokai_red },
		TSRainbowYellow = { fg = C.monokai_yellow },
		TSRainbowBlue = { fg = C.monokai_blue },
		TSRainbowOrange = { fg = C.monokai_orange },
		TSRainbowGreen = { fg = C.green },
		TSRainbowViolet = { fg = C.monokai_violet },
		TSRainbowCyan = { fg = C.monokai_cyan },
	}
end

return M
