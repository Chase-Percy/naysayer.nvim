local M = {}

function M.get()
	return {
		NotifyBackground = { bg = (O.transparent_background and vim.o.winblend == 0) and "#000000" or C.darkest_green },

		NotifyERRORBorder = { fg = C.red },
		NotifyERRORIcon = { fg = C.red },
		NotifyERRORTitle = { fg = C.red, style = { "italic" } },
		NotifyWARNBorder = { fg = C.yellow },
		NotifyWARNIcon = { fg = C.yellow },
		NotifyWARNTitle = { fg = C.yellow, style = { "italic" } },
		NotifyINFOBorder = { fg = C.blue },
		NotifyINFOIcon = { fg = C.blue },
		NotifyINFOTitle = { fg = C.blue, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.monokai_orange },
		NotifyDEBUGIcon = { fg = C.monokai_orange },
		NotifyDEBUGTitle = { fg = C.monokai_orange, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.monokai_yellow },
		NotifyTRACEIcon = { fg = C.monokai_yellow },
		NotifyTRACETitle = { fg = C.monokai_yellow, style = { "italic" } },
	}
end

return M
