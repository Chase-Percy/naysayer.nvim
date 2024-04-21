local M = {}

function M.get()
	return {
		BufferCurrent = { bg = C.dark_green, fg = C.brown },
		BufferCurrentIndex = { bg = C.dark_green, fg = C.monokai_blue },
		BufferCurrentMod = { bg = C.dark_green, fg = C.monokai_yellow },
		BufferCurrentSign = { bg = C.dark_green, fg = C.monokai_blue },
		BufferCurrentTarget = { bg = C.dark_green, fg = C.monokai_red },
		BufferVisible = { bg = C.darkest_green, fg = C.brown },
		BufferVisibleIndex = { bg = C.darkest_green, fg = C.monokai_blue },
		BufferVisibleMod = { bg = C.darkest_green, fg = C.monokai_yellow },
		BufferVisibleSign = { bg = C.darkest_green, fg = C.monokai_blue },
		BufferVisibleTarget = { bg = C.darkest_green, fg = C.monokai_red },
		BufferInactive = { bg = C.darkest_green, fg = C.tiffany },
		BufferInactiveIndex = { bg = C.darkest_green, fg = C.tiffany },
		BufferInactiveMod = { bg = C.darkest_green, fg = C.monokai_yellow },
		BufferInactiveSign = { bg = C.darkest_green, fg = C.monokai_blue },
		BufferInactiveTarget = { bg = C.darkest_green, fg = C.monokai_red },
		BufferTabpages = { bg = C.darkest_green, fg = C.none },
		BufferTabpage = { bg = C.darkest_green, fg = C.monokai_blue },
	}
end

return M
