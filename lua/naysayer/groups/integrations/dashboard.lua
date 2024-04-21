local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = C.monokai_magenta },
		DashboardHeader = { fg = C.monokai_blue },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.monokai_yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.monokai_blue },
		DashboardProjectTitle = { fg = C.monokai_blue },
		DashboardFiles = { fg = C.grey },
		DashboardKey = { fg = C.monokai_orange },
		DashboardDesc = { fg = C.monokai_blue },
		DashboardIcon = { fg = C.monokai_magenta, bold = true },
	}
end

return M
