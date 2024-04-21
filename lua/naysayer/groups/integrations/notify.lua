local M = {}

function M.get()
	return {
		NotifyBackground = { bg = (O.transparent_background and vim.o.winblend == 0) and "#000000" or C.darkest_green },

		NotifyERRORBorder = { fg = C.monokai_red },
		NotifyERRORIcon = { fg = C.monokai_red },
		NotifyERRORTitle = { fg = C.monokai_red, style = { "italic" } },
		NotifyWARNBorder = { fg = C.monokai_yellow },
		NotifyWARNIcon = { fg = C.monokai_yellow },
		NotifyWARNTitle = { fg = C.monokai_yellow, style = { "italic" } },
		NotifyINFOBorder = { fg = C.monokai_blue },
		NotifyINFOIcon = { fg = C.monokai_blue },
		NotifyINFOTitle = { fg = C.monokai_blue, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.monokai_orange },
		NotifyDEBUGIcon = { fg = C.monokai_orange },
		NotifyDEBUGTitle = { fg = C.monokai_orange, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.monokai_yellow },
		NotifyTRACEIcon = { fg = C.monokai_yellow },
		NotifyTRACETitle = { fg = C.monokai_yellow, style = { "italic" } },
	}
end

return M
