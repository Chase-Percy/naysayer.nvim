local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.darkest_green
	return {
		FlashBackdrop = { fg = C.tiffany },
		FlashLabel = { fg = C.green, bg = bg, style = { "bold" } },
		FlashMatch = { fg = C.grey, bg = bg },
		FlashCurrent = { fg = C.monokai_orange, bg = bg },
		FlashPrompt = { link = "NormalFloat" },
	}
end

return M
