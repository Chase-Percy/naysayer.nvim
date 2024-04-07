local M = {}

function M.get()
	return {
		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.blue },
		WhichKeySeparator = { fg = C.tiffany },
		WhichKeyDesc = { fg = C.monokai_magenta },
		WhichKeyValue = { fg = C.tiffany },
	}
end

return M
