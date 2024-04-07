local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = C.monokai_magenta },
		DashboardHeader = { fg = C.blue },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.monokai_blue },
		DashboardProjectTitle = { fg = C.monokai_blue },
		DashboardFiles = { fg = C.grey },
		DashboardKey = { fg = C.monokai_orange },
		DashboardDesc = { fg = C.blue },
		DashboardIcon = { fg = C.monokai_magenta, bold = true },
	}
end

return M
