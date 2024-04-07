local M = {}

function M.get()
	return {
		NotifierIcon = { fg = C.monokai_violet },
		NotifierContent = { fg = C.green, blend = 0, style = { "italic" } },
		NotifierContentDim = { fg = C.light_green, blend = 0, style = { "italic" } },
	}
end

return M
