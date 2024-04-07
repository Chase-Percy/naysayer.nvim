local M = {}

function M.get()
	return {
		rainbowcol1 = { fg = C.red },
		rainbowcol2 = { fg = C.monokai_cyan },
		rainbowcol3 = { fg = C.yellow },
		rainbowcol4 = { fg = C.blue },
		rainbowcol5 = { fg = C.monokai_magenta },
		rainbowcol6 = { fg = C.monokai_yellow },
		rainbowcol7 = { fg = C.green },
	}
end

return M
