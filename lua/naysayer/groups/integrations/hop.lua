local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.darkest_green
	return {
		HopNextKey = { bg = bg, fg = C.monokai_orange, style = { "bold", "underline" } },
		HopNextKey1 = { bg = bg, fg = C.monokai_blue, style = { "bold" } },
		HopNextKey2 = { bg = bg, fg = C.monokai_cyan, style = { "bold", "italic" } },
		HopUnmatched = { bg = bg, fg = C.tiffany },
	}
end

return M
