local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.darker_green }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.light_green }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.darkest_green, bg = C.white }, -- character under the cursor
		lCursor = { fg = C.darkest_green, bg = C.white }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.darkest_green, bg = C.white }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.darkest_green }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = {
			bg = U.vary_color(
				{ latte = U.lighten(C.darkest_green, 0.70, C.darkest_green) },
				U.darken(C.darker_green, 0.64, C.darkest_green)
			),
		}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
		Directory = { fg = C.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = O.show_end_of_buffer and C.dark_green or C.darkest_green }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.red, style = { "bold", "italic" } }, -- error messages on the command line
		VertSplit = { fg = O.transparent_background and C.dark_green or C.darkest_green }, -- the column separating vertically split windows
		Folded = { fg = C.blue, bg = O.transparent_background and C.none or C.dark_green }, -- line used for closed folds
		FoldColumn = { fg = C.tiffany }, -- 'foldcolumn'
		SignColumn = { fg = C.dark_green }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.darkest_green, fg = C.dark_green }, -- column where |signs| are displayed
		Substitute = { bg = C.dark_green, fg = U.vary_color({ latte = C.red }, C.monokai_magenta) }, -- |:substitute| replacement text highlighting
		LineNr = { fg = C.grey, }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = C.brown, style = { "bold" } }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.monokai_orange, bg = C.dark_green, style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.white, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = C.white }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.blue }, -- |more-prompt|
		NonText = { fg = C.tiffany }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.white, bg = O.transparent_background and C.none or C.darkest_green }, -- normal text
		NormalNC = {
			fg = C.white,
			bg = (O.transparent_background and O.dim_inactive.enabled and C.dim)
				or (O.dim_inactive.enabled and C.dim)
				or (O.transparent_background and C.none)
				or C.darkest_green,
		}, -- normal text in non-current windows
		NormalSB = { fg = C.white, bg = C.darkest_green }, -- normal text in non-current windows
		NormalFloat = {
			fg = C.white,
			bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.dark_green,
		}, -- Normal text in floating windows.
		FloatBorder = { fg = C.brown },
		FloatTitle = { fg = C.brown }, -- Title of floating windows
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none
				or U.darken(C.darker_green, 0.8, C.darkest_green),
			fg = C.green,
		}, -- Popup menu: normal item.
		PmenuSel = { bg = C.dark_green, style = { "bold" } }, -- Popup menu: selected item.
		PmenuSbar = { bg = C.dark_green }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.tiffany }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = C.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = C.dark_green, style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = U.darken(C.monokai_cyan, 0.30, C.darkest_green), fg = C.white }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = U.darken(C.monokai_cyan, 0.90, C.darkest_green), fg = C.darkest_green }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = C.red, fg = C.darkest_green }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.yellow, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.white, bg = O.transparent_background and C.none or C.darkest_green }, -- status line of current window
		StatusLineNC = { fg = C.dark_green, bg = O.transparent_background and C.none or C.darkest_green }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.darkest_green, fg = C.dark_green }, -- tab pages line, not active tab page label
		TabLineFill = {}, -- tab pages line, where there are no labels
		TabLineSel = { fg = C.green, bg = C.dark_green }, -- tab pages line, active tab page label
		Title = { fg = C.blue, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = C.dark_green, style = { "bold" } }, -- Visual mode selection
		VisualNOS = { bg = C.dark_green, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.yellow }, -- warning messages
		Whitespace = { fg = C.dark_green }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = C.tiffany }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.monokai_red },
		WinBarNC = { link = "WinBar" },
		WinSeparator = { fg = O.transparent_background and C.dark_green or C.darkest_green },
	}
end

return M
