local M = {}

function M.get()
	return {
		Dash = { fg = C.green, style = { "bold" } },
		Quote = { link = "@text.strong" },
		CodeBlock = { bg = C.darkest_green },
		Headline = { link = "Headline1" },
		Headline1 = { bg = C.darker_green, fg = C.monokai_red },
		Headline2 = { bg = C.darker_green, fg = C.monokai_orange },
		Headline3 = { bg = C.darker_green, fg = C.monokai_yellow },
		Headline4 = { bg = C.darker_green, fg = C.green },
		Headline5 = { bg = C.darker_green, fg = C.monokai_blue },
		Headline6 = { bg = C.darker_green, fg = C.grey },
	}
end

return M
