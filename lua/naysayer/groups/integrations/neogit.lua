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
			bg = U.darken(C.monokai_blue, 0.095, C.darkest_green),
			fg = U.darken(C.monokai_blue, 0.5, C.darkest_green),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(C.monokai_blue, 0.215, C.darkest_green),
			fg = C.monokai_blue,
		},
		NeogitDiffContextHighlight = {
			bg = C.darker_green,
		},
		NeogitDiffDeleteHighlight = {
			bg = U.darken(C.monokai_red, 0.345, C.darkest_green),
			fg = U.lighten(C.monokai_red, 0.850, C.brown),
		},
		NeogitDiffAddHighlight = {
			bg = U.darken(C.green, 0.345, C.darkest_green),
			fg = U.lighten(C.green, 0.850, C.brown),
		},
		NeogitDiffDelete = {
			bg = U.darken(C.monokai_red, 0.095, C.darkest_green),
			fg = U.darken(C.monokai_red, 0.800, C.darkest_green),
		},
		NeogitDiffAdd = {
			bg = U.darken(C.green, 0.095, C.darkest_green),
			fg = U.darken(C.green, 0.800, C.darkest_green),
		},
		NeogitCommitViewHeader = {
			bg = U.darken(C.monokai_blue, 0.300, C.darkest_green),
			fg = U.lighten(C.monokai_blue, 0.800, C.brown),
		},
		NeogitChangeModified = {
			fg = C.monokai_blue,
			style = { "bold" },
		},
		NeogitChangeDeleted = {
			fg = C.monokai_red,
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
			fg = C.monokai_yellow,
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
			fg = C.monokai_blue,
		},
		NeogitNotificationWarning = {
			fg = C.monokai_yellow,
		},
		NeogitNotificationError = {
			fg = C.monokai_red,
		},
		NeogitGraphRed = {
			fg = C.monokai_red,
		},
		NeogitGraphWhite = {
			fg = C.darkest_green,
		},
		NeogitGraphYellow = {
			fg = C.monokai_yellow,
		},
		NeogitGraphGreen = {
			fg = C.green,
		},
		NeogitGraphCyan = {
			fg = C.monokai_blue,
		},
		NeogitGraphBlue = {
			fg = C.monokai_blue,
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
			fg = C.monokai_red,
			style = { "bold" },
		},
		NeogitGraphBoldWhite = {
			fg = C.white,
			style = { "bold" },
		},
		NeogitGraphBoldYellow = {
			fg = C.monokai_yellow,
			style = { "bold" },
		},
		NeogitGraphBoldGreen = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitGraphBoldCyan = {
			fg = C.monokai_blue,
			style = { "bold" },
		},
		NeogitGraphBoldBlue = {
			fg = C.monokai_blue,
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
			fg = C.monokai_blue,
			style = { "italic" },
		},
		NeogitDiffHeader = {
			bg = C.darkest_green,
			fg = C.monokai_blue,
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
			fg = C.monokai_yellow,
		},
		NeogitTagDistance = {
			fg = C.monokai_blue,
		},
	}
end

return M
