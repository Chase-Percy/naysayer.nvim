local M = {}

local virtual_text = O.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = C.brown },
		NoiceCmdlineIcon = { fg = C.monokai_blue, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = C.monokai_yellow },
		NoiceCmdlinePopupBorder = { fg = C.grey },
		NoiceCmdlinePopupBorderSearch = { fg = C.monokai_yellow },
		NoiceConfirmBorder = { fg = C.monokai_blue },
		NoiceMini = { fg = C.brown, blend = 0 },
		NoiceFormatProgressDone = {
			bg = O.transparent_background and C.none or U.darken(C.monokai_blue, 0.30, C.darkest_green),
			fg = C.brown,
		},
		NoiceFormatProgressTodo = {
			bg = O.transparent_background and C.none or U.vary_color(
				{ latte = U.lighten(C.darkest_green, 0.70, C.darkest_green) },
				U.darken(C.darker_green, 0.64, C.darkest_green)
			),
			fg = C.brown,
		},
	}
end

return M
