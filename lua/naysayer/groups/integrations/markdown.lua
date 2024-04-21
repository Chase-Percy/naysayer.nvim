local M = {}

function M.get()
	return {
		markdownHeadingDelimiter = { fg = C.monokai_orange, style = { "bold" } },
		markdownCode = { fg = C.monokai_yellow },
		markdownCodeBlock = { fg = C.monokai_yellow },
		markdownLinkText = { fg = C.monokai_blue, style = { "underline" } },
		markdownH1 = { link = "rainbow1" },
		markdownH2 = { link = "rainbow2" },
		markdownH3 = { link = "rainbow3" },
		markdownH4 = { link = "rainbow4" },
		markdownH5 = { link = "rainbow5" },
		markdownH6 = { link = "rainbow6" },
	}
end

return M
