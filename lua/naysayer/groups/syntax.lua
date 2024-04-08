local M = {}

function M.get()
	return {
		Comment = { fg = C.green, style = O.styles.comments }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.monokai_yellow }, -- (preferred) any constant
		String = { fg = C.tiffany, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.tiffany }, --  a character constant: 'c', '\n'
		Number = { fg = C.mint, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { link = "Number" }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.mint, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.grey, style = O.styles.variables or {} }, -- (preferred) any variable name
		Function = { fg = C.brown, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.white }, -- (preferred) any statement
		Conditional = { fg = C.light_green, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = C.white, style = O.styles.loops or {} }, --   for, do, while, etc.
		Label = { fg = C.brown }, --    case, default, etc.
		Operator = { fg = C.white, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.mint, style = O.styles.keywords or {} }, --  any other keyword
		Exception = { fg = C.light_green, style = O.styles.keywords or {} }, --  try, catch, throw

		PreProc = { fg = C.white }, -- (preferred) generic Preprocessor
		Include = { fg = C.light_green, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.light_green }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.yellow }, -- static, register, volatile, etc.
		Structure = { fg = C.white }, --  struct, union, enum, etc.
		Special = { fg = C.white }, -- (preferred) any special symbol
		Type = { fg = C.tiffany, style = O.styles.types or {} }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { fg = C.monokai_blue, style = { "bold" } }, -- you can use CTRL-] on this
		Delimiter = { fg = C.brown }, -- character that needs attention
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.red }, -- (preferred) any erroneous construct
		Todo = { bg = C.monokai_magenta, fg = C.darkest_green, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.brown },
		qfFileName = { fg = C.brown },
		htmlH1 = { fg = C.white, style = { "bold" } },
		htmlH2 = { fg = C.white, style = { "bold" } },
		-- mkdHeading = { fg = C.monokai_orange, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, fg = C.brown },
		mkdCodeDelimiter = { bg = C.darkest_green, fg = C.brown },
		mkdCodeStart = { fg = C.monokai_magenta, style = { "bold" } },
		mkdCodeEnd = { fg = C.monokai_magenta, style = { "bold" } },
		-- mkdLink = { fg = C.blue, style = { "underline" } },

		-- netrw
		netrwDir = { fg = C.brown },
		netrwClassify = { fg = C.brown },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.darkest_green }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.darkest_green, fg = C.tiffany }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.dark_green },
		illuminatedCurWord = { bg = C.dark_green },
		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.blue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.monokai_orange },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.tiffany },
		diffIndexLine = { fg = C.monokai_cyan },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.darkest_green) }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = U.darken(C.blue, 0.07, C.darkest_green) }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = U.darken(C.red, 0.18, C.darkest_green) }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = U.darken(C.blue, 0.30, C.darkest_green) }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.monokai_cyan },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.monokai_cyan },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.blue },
		GlyphPalette6 = { fg = C.monokai_cyan },
		GlyphPalette7 = { fg = C.brown },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.monokai_orange },
		rainbow3 = { fg = C.yellow },
		rainbow4 = { fg = C.green },
		rainbow5 = { fg = C.blue },
		rainbow6 = { fg = C.grey },
	}
end

return M
