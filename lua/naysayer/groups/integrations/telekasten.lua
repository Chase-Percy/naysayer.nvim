local M = {}

function M.get()
	return {
		tkLink = { fg = C.blue },
		tkBrackets = { fg = C.monokai_magenta },
		tkTag = { fg = C.monokai_blue },
	}
end

return M
