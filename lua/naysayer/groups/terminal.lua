local M = {}

function M.get()
	return {
		terminal_color_0 = C.tiffany,
		terminal_color_8 = C.light_green,

		terminal_color_1 = C.red,
		terminal_color_9 = C.red,

		terminal_color_2 = C.green,
		terminal_color_10 = C.green,

		terminal_color_3 = C.yellow,
		terminal_color_11 = C.yellow,

		terminal_color_4 = C.blue,
		terminal_color_12 = C.blue,

		terminal_color_5 = C.monokai_magenta,
		terminal_color_13 = C.monokai_magenta,

		terminal_color_6 = C.monokai_blue,
		terminal_color_14 = C.monokai_blue,

		terminal_color_7 = C.brown,
		terminal_color_15 = C.brown,
	}
end

return M
