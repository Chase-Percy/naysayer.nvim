local M = {}

function M.get()
	return {
		GitGutterAdd = { fg = C.green },
		GitGutterChange = { fg = C.monokai_yellow },
		GitGutterDelete = { fg = C.monokai_red },
	}
end

return M
