local M = {}

function M.get()
	return {
		NeogitBranch = {
			fg = C.monokai_orange,
			style = { "bold" },
		},
		NeogitRemote = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitUnmergedInto = {
			link = "Function",
		},
		NeogitUnpulledFrom = {
			link = "Function",
		},
		NeogitObjectId = {
			link = "Comment",
		},
		NeogitStash = {
			link = "Comment",
		},
		NeogitRebaseDone = {
			link = "Comment",
		},
		NeogitHunkHeader = {
			bg = U.darken(C.blue, 0.095, C.darkest_green),
			fg = U.darken(C.blue, 0.5, C.darkest_green),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(C.blue, 0.215, C.darkest_green),
			fg = C.blue,
		},
		NeogitDiffContextHighlight = {
			bg = C.darker_green,
		},
		NeogitDiffDeleteHighlight = {
			bg = U.darken(C.red, 0.345, C.darkest_green),
			fg = U.lighten(C.red, 0.850, C.brown),
		},
		NeogitDiffAddHighlight = {
			bg = U.darken(C.green, 0.345, C.darkest_green),
			fg = U.lighten(C.green, 0.850, C.brown),
		},
		NeogitDiffDelete = {
			bg = U.darken(C.red, 0.095, C.darkest_green),
			fg = U.darken(C.red, 0.800, C.darkest_green),
		},
		NeogitDiffAdd = {
			bg = U.darken(C.green, 0.095, C.darkest_green),
			fg = U.darken(C.green, 0.800, C.darkest_green),
		},
		NeogitCommitViewHeader = {
			bg = U.darken(C.blue, 0.300, C.darkest_green),
			fg = U.lighten(C.blue, 0.800, C.brown),
		},
		NeogitChangeModified = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitChangeDeleted = {
			fg = C.red,
			style = { "bold" },
		},
		NeogitChangeAdded = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitChangeRenamed = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitChangeUpdated = {
			fg = C.monokai_orange,
			style = { "bold" },
		},
		NeogitChangeCopied = {
			fg = C.monokai_magenta,
			style = { "bold" },
		},
		NeogitChangeBothModified = {
			fg = C.yellow,
			style = { "bold" },
		},
		NeogitChangeNewFile = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitUntrackedfiles = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitUnstagedchanges = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitUnmergedchanges = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitUnpulledchanges = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitRecentcommits = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitStagedchanges = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitStashes = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitRebasing = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitNotificationInfo = {
			fg = C.blue,
		},
		NeogitNotificationWarning = {
			fg = C.yellow,
		},
		NeogitNotificationError = {
			fg = C.red,
		},
		NeogitGraphRed = {
			fg = C.red,
		},
		NeogitGraphWhite = {
			fg = C.darkest_green,
		},
		NeogitGraphYellow = {
			fg = C.yellow,
		},
		NeogitGraphGreen = {
			fg = C.green,
		},
		NeogitGraphCyan = {
			fg = C.blue,
		},
		NeogitGraphBlue = {
			fg = C.blue,
		},
		NeogitGraphPurple = {
			fg = C.grey,
		},
		NeogitGraphGray = {
			fg = C.brown,
		},
		NeogitGraphOrange = {
			fg = C.monokai_orange,
		},
		NeogitGraphBoldRed = {
			fg = C.red,
			style = { "bold" },
		},
		NeogitGraphBoldWhite = {
			fg = C.white,
			style = { "bold" },
		},
		NeogitGraphBoldYellow = {
			fg = C.yellow,
			style = { "bold" },
		},
		NeogitGraphBoldGreen = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitGraphBoldCyan = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitGraphBoldBlue = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitGraphBoldPurple = {
			fg = C.grey,
			style = { "bold" },
		},
		NeogitGraphBoldGray = {
			fg = C.brown,
			style = { "bold" },
		},
		NeogitDiffContext = {
			bg = C.darkest_green,
		},
		NeogitPopupBold = {
			style = { "bold" },
		},
		NeogitPopupSwitchKey = {
			fg = C.grey,
		},
		NeogitPopupOptionKey = {
			fg = C.grey,
		},
		NeogitPopupConfigKey = {
			fg = C.grey,
		},
		NeogitPopupActionKey = {
			fg = C.grey,
		},
		NeogitFilePath = {
			fg = C.blue,
			style = { "italic" },
		},
		NeogitDiffHeader = {
			bg = C.darkest_green,
			fg = C.blue,
			style = { "bold" },
		},
		NeogitDiffHeaderHighlight = {
			bg = C.darkest_green,
			fg = C.monokai_orange,
			style = { "bold" },
		},
		NeogitUnpushedTo = {
			fg = C.grey,
			style = { "bold" },
		},
		NeogitFold = {
			fg = C.none,
			bg = C.none,
		},
		NeogitSectionHeader = {
			fg = C.monokai_violet,
			style = { "bold" },
		},
		NeogitTagName = {
			fg = C.yellow,
		},
		NeogitTagDistance = {
			fg = C.blue,
		},
	}
end

return M
