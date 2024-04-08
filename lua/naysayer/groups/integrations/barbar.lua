local M = {}

function M.get()
	return {
		BufferCurrent = { bg = C.dark_green, fg = C.brown },
		BufferCurrentIndex = { bg = C.dark_green, fg = C.blue },
		BufferCurrentMod = { bg = C.dark_green, fg = C.yellow },
		BufferCurrentSign = { bg = C.dark_green, fg = C.blue },
		BufferCurrentTarget = { bg = C.dark_green, fg = C.red },
		BufferVisible = { bg = C.darkest_green, fg = C.brown },
		BufferVisibleIndex = { bg = C.darkest_green, fg = C.blue },
		BufferVisibleMod = { bg = C.darkest_green, fg = C.yellow },
		BufferVisibleSign = { bg = C.darkest_green, fg = C.blue },
		BufferVisibleTarget = { bg = C.darkest_green, fg = C.red },
		BufferInactive = { bg = C.darkest_green, fg = C.tiffany },
		BufferInactiveIndex = { bg = C.darkest_green, fg = C.tiffany },
		BufferInactiveMod = { bg = C.darkest_green, fg = C.yellow },
		BufferInactiveSign = { bg = C.darkest_green, fg = C.blue },
		BufferInactiveTarget = { bg = C.darkest_green, fg = C.red },
		BufferTabpages = { bg = C.darkest_green, fg = C.none },
		BufferTabpage = { bg = C.darkest_green, fg = C.blue },
	}
end

return M
