local M = {}

function M.get()
	local transparent_background = require("naysayer").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.darkest_green

	local inactive_bg = transparent_background and "NONE" or C.darkest_green

	local indentscope_color = O.integrations.mini.indentscope_color
	return {
		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { style = { "underline" } },
		MiniCursorwordCurrent = { style = { "underline" } },

		MiniIndentscopeSymbol = { fg = C[indentscope_color] or C.brown },
		MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible

		MiniJump = { fg = C.green, bg = C.monokai_magenta },

		MiniJump2dSpot = { bg = C.darkest_green, fg = C.monokai_orange, style = { "bold", "underline" } },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.monokai_yellow, style = { "italic" } },
		MiniStarterHeader = { fg = C.monokai_blue },
		MiniStarterInactive = { fg = C.mint, style = O.styles.comments },
		MiniStarterItem = { fg = C.brown },
		MiniStarterItemBullet = { fg = C.monokai_blue },
		MiniStarterItemPrefix = { fg = C.monokai_magenta },
		MiniStarterSection = { fg = C.monokai_yellow },
		MiniStarterQuery = { fg = C.green },

		MiniStatuslineDevinfo = { fg = C.brown, bg = C.dark_green },
		MiniStatuslineFileinfo = { fg = C.brown, bg = C.dark_green },
		MiniStatuslineFilename = { fg = C.brown, bg = C.darkest_green },
		MiniStatuslineInactive = { fg = C.monokai_blue, bg = C.darkest_green },
		MiniStatuslineModeCommand = { fg = C.darkest_green, bg = C.monokai_orange, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.darkest_green, bg = C.green, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.darkest_green, bg = C.monokai_blue, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.darkest_green, bg = C.monokai_cyan, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.darkest_green, bg = C.monokai_red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.darkest_green, bg = C.monokai_violet, style = { "bold" } },

		MiniSurround = { bg = C.monokai_magenta, fg = C.dark_green },

		MiniTablineCurrent = {
			fg = C.brown,
			bg = C.darkest_green,
			sp = C.monokai_red,
			style = { "bold", "italic", "underline" },
		},
		MiniTablineFill = { bg = bg_highlight },
		MiniTablineHidden = { fg = C.brown, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = C.monokai_red, bg = C.none, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.monokai_red, bg = C.none },
		MiniTablineModifiedVisible = { fg = C.monokai_red, bg = C.none },
		MiniTablineTabpagesection = { fg = C.dark_green, bg = C.darkest_green },
		MiniTablineVisible = { bg = C.none },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.monokai_red, style = { "bold" } },
		MiniTestPass = { fg = C.green, style = { "bold" } },

		MiniTrailspace = { bg = C.monokai_red },
	}
end

return M
