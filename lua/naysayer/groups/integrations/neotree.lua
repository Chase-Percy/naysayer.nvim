local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.darkest_green
	local inactive_bg = O.transparent_background and C.none or C.darkest_green
	return {
		NeoTreeDirectoryName = { fg = C.monokai_blue },
		NeoTreeDirectoryIcon = { fg = C.monokai_blue },
		NeoTreeNormal = { fg = C.brown, bg = active_bg },
		NeoTreeNormalNC = { fg = C.brown, bg = active_bg },
		NeoTreeExpander = { fg = C.tiffany },
		NeoTreeIndentMarker = { fg = C.tiffany },
		NeoTreeRootName = { fg = C.monokai_blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.monokai_magenta },
		NeoTreeModified = { fg = C.monokai_orange },

		NeoTreeGitAdded = { fg = C.green },
		NeoTreeGitConflict = { fg = C.monokai_red },
		NeoTreeGitDeleted = { fg = C.monokai_red },
		NeoTreeGitIgnored = { fg = C.tiffany },
		NeoTreeGitModified = { fg = C.monokai_yellow },
		NeoTreeGitUnstaged = { fg = C.monokai_red },
		NeoTreeGitUntracked = { fg = C.monokai_violet },
		NeoTreeGitStaged = { fg = C.green },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.darkest_green, bg = C.monokai_blue },

		NeoTreeFileNameOpened = { fg = C.monokai_magenta },
		NeoTreeDimText = { fg = C.light_green },
		NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.grey, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.tiffany },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.darkest_green, bg = inactive_bg },
		NeoTreeWinSeparator = {
			fg = O.transparent_background and C.dark_green or C.darkest_green,
			bg = O.transparent_background and C.none or C.darkest_green,
		},
		NeoTreeStatusLineNC = { fg = C.darkest_green, bg = C.darkest_green },
	}
end

return M
