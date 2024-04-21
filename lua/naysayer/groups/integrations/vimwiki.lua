local M = {}

function M.get()
	return {
		VimwikiLink = { fg = C.monokai_blue, bg = C.none },
		VimwikiHeaderChar = { fg = C.grey, bg = C.none },
		VimwikiHR = { fg = C.monokai_yellow, bg = C.none },
		VimwikiList = { fg = C.monokai_orange, bg = C.none },
		VimwikiTag = { fg = C.monokai_orange, bg = C.none },
		VimwikiMarkers = { fg = C.brown, bg = C.none },
		VimwikiHeader1 = { fg = C.monokai_orange, bg = C.none, style = { "bold" } },
		VimwikiHeader2 = { fg = C.green, bg = C.none, style = { "bold" } },
		VimwikiHeader3 = { fg = C.monokai_blue, bg = C.none, style = { "bold" } },
		VimwikiHeader4 = { fg = C.monokai_blue, bg = C.none, style = { "bold" } },
		VimwikiHeader5 = { fg = C.monokai_yellow, bg = C.none, style = { "bold" } },
		VimwikiHeader6 = { fg = C.monokai_violet, bg = C.none, style = { "bold" } },
	}
end

return M
