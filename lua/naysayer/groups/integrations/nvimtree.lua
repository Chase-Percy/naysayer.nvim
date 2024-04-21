local M = {}

function M.get()
	return {
		NvimTreeFolderName = { fg = C.monokai_blue },
		NvimTreeFolderIcon = { fg = C.monokai_blue },
		NvimTreeNormal = { fg = C.brown, bg = O.transparent_background and C.none or C.darkest_green },
		NvimTreeOpenedFolderName = { fg = C.monokai_blue },
		NvimTreeEmptyFolderName = { fg = C.monokai_blue },
		NvimTreeIndentMarker = { fg = C.tiffany },
		NvimTreeWinSeparator = {
			fg = O.transparent_background and C.dark_green or C.darkest_green,
			bg = O.transparent_background and C.none or C.darkest_green,
		},
		NvimTreeRootFolder = { fg = C.grey, style = { "bold" } },
		NvimTreeSymlink = { fg = C.monokai_magenta },
		NvimTreeStatuslineNc = { fg = C.darkest_green, bg = C.darkest_green },
		NvimTreeGitDirty = { fg = C.monokai_yellow },
		NvimTreeGitNew = { fg = C.monokai_blue },
		NvimTreeGitDeleted = { fg = C.monokai_red },
		NvimTreeSpecialFile = { fg = C.monokai_yellow },
		NvimTreeImageFile = { fg = C.brown },
		NvimTreeOpenedFile = { fg = C.monokai_magenta },
	}
end

return M
