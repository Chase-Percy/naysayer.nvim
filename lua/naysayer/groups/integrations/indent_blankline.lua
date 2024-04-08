local M = {}

function M.get()
	local scope_color = O.integrations.indent_blankline.scope_color

	local hi = {
		IblIndent = { fg = C.darker_green },
		IblScope = { fg = C[scope_color] or C.brown },
	}

	if O.integrations.indent_blankline.colored_indent_levels then
		hi["RainbowRed"] = { blend = 0, fg = C.red }
		hi["RainbowYellow"] = { blend = 0, fg = C.yellow }
		hi["RainbowBlue"] = { blend = 0, fg = C.blue }
		hi["RainbowOrange"] = { blend = 0, fg = C.monokai_orange }
		hi["RainbowGreen"] = { blend = 0, fg = C.green }
		hi["RainbowViolet"] = { blend = 0, fg = C.monokai_violet }
		hi["RainbowCyan"] = { blend = 0, fg = C.monokai_cyan }
	end

	return hi
end

return M
