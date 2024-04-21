local M = {}

function M.get()
	if type(O.integrations.gitsigns) == "boolean" then
		O.integrations.gitsigns = { enabled = true, transparent = false }
	end

	if O.transparent_background then
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.monokai_yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.monokai_red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.dark_green },

			GitSignsAddPreview = O.transparent_background
					and { fg = U.darken(C.green, 0.72, C.darkest_green), bg = C.none }
				or { link = "DiffAdd" },
			GitSignsDeletePreview = O.transparent_background
					and { fg = U.darken(C.monokai_red, 0.72, C.darkest_green), bg = C.none }
				or { link = "DiffDelete" },
			-- for word diff in previews
			GitSignsAddInline = O.transparent_background and {
				fg = C.green,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffAdd" },
			GitSignsDeleteInline = O.transparent_background and {
				fg = C.monokai_red,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffDelete" },
			GitSignsChangeInline = O.transparent_background and {
				fg = C.monokai_yellow,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffChange" },

			GitSignsDeleteVirtLn = O.transparent_background and { bg = C.none, fg = C.monokai_red }
				or { link = "DiffDelete" },
		}
	else
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.monokai_yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.monokai_red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.dark_green },

			GitSignsAddPreview = O.transparent_background and { fg = C.green, bg = C.none } or { link = "DiffAdd" },
			GitSignsDeletePreview = O.transparent_background and { fg = C.monokai_red, bg = C.none }
				or { link = "DiffDelete" },
		}
	end
end

return M
