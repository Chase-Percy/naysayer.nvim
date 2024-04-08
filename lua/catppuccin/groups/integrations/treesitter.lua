local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify_once(
			[[Catppuccin (info):
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, either disable the integration or pin catppuccin tag to v0.2.4 and nvim-treesitter commit to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
			vim.log.levels.INFO
		)
		return {}
	end

	local colors = { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
		-- Identifiers
		["@variable"] = { fg = C.brown, style = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = C.red, style = O.styles.properties or {} }, -- Variable names that are defined by the languages, like this or self.
		["@variable.parameter"] = { fg = C.brown, style = O.styles.variables or {} }, -- For parameters of a function.
		["@variable.member"] = { fg = C.brown }, -- For fields.

		["@constant"] = { link = "Constant" }, -- For constants
		["@constant.builtin"] = { fg = C.monokai_orange, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@module"] = { fg = C.tiffany, style = O.styles.miscs or { "italic" } }, -- For identifiers referring to modules and namespaces.
		["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.

		-- Literals
		["@string"] = { link = "String" }, -- For strings.
		["@string.regexp"] = { fg = C.monokai_red, style = O.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = C.monokai_violet, style = O.styles.strings or {} }, -- For escape characters within a string.
		["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
		["@string.special.symbol"] = { fg = C.monokai_yellow },
		["@string.special.url"] = { fg = C.monokai_yellow, style = { "italic", "underline" } }, -- urls, links and emails

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- For booleans.
		["@number"] = { link = "Number" }, -- For all numbers
		["@number.float"] = { link = "Float" }, -- For floats.

		-- Types
		["@type"] = { link = "Type" }, -- For types.
		["@type.builtin"] = { link = "Type" }, -- For builtin types.
		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)
		["@type.qualifier"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)

		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
		["@property"] = { fg = C.white, style = O.styles.properties or {} }, -- Same as TSField.

		-- Functions
		["@function"] = { link = "Function" }, -- For function (calls and definitions).
		["@function.builtin"] = { link = "Function" }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" }, -- function calls
		["@function.macro"] = { link = "Function" }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.

		["@function.method"] = { link = "Function" }, -- For method definitions.
		["@function.method.call"] = { link = "Function" }, -- For method calls.

		["@constructor"] = { fg = C.yellow }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

		-- Keywords
		["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
		["@keyword.function"] = { fg = C.white, style = O.styles.keywords or {} }, -- For keywords used to define a function.
		["@keyword.operator"] = { fg = C.white, style = O.styles.operators or {} }, -- For new keyword operator
		["@keyword.import"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@keyword.storage"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
		["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loops.
		["@keyword.return"] = { fg = C.white, style = O.styles.keywords or {} },
		["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords.

		["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.

		["@keyword.directive"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
		["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives
		-- JS & derivative
		["@keyword.export"] = { fg = C.monokai_blue, style = O.styles.keywords },

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
		["@punctuation.bracket"] = { fg = C.white }, -- For brackets and parenthesis.
		["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

		-- Comment
		["@comment"] = { link = "Comment" },

		["@comment.error"] = { fg = C.darkest_green, bg = C.red },
		["@comment.warning"] = { fg = C.darkest_green, bg = C.yellow },
		["@comment.hint"] = { fg = C.darkest_green, bg = C.blue },
		["@comment.todo"] = { fg = C.darkest_green, bg = C.monokai_yellow },

		-- Markup
		["@markup"] = { fg = C.white }, -- For strings considerated text in a markup language.
		["@markup.strong"] = { fg = C.monokai_magenta, style = { "bold" } }, -- bold
		["@markup.italic"] = { fg = C.monokai_magenta, style = { "italic" } }, -- italic
		["@markup.strikethrough"] = { fg = C.white, style = { "strikethrough" } }, -- strikethrough text
		["@markup.underline"] = { link = "Underlined" }, -- underlined text

		["@markup.heading"] = { fg = C.blue, style = { "bold" } }, -- titles like: # Example

		["@markup.math"] = { fg = C.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@markup.environment"] = { fg = C.monokai_magenta }, -- text environments of markup languages
		["@markup.environment.name"] = { fg = C.blue }, -- text indicating the type of an environment

		["@markup.link"] = { link = "Tag" }, -- text references, footnotes, citations, etc.
		["@markup.link.url"] = { fg = C.monokai_yellow, style = { "italic", "underline" } }, -- urls, links and emails

		["@markup.raw"] = { fg = C.monokai_cyan }, -- used for inline code in markdown and for doc in python (""")

		["@markup.list"] = { link = "Special" },
		["@markup.list.checked"] = { fg = C.green }, -- todo notes
		["@markup.list.unchecked"] = { fg = C.light_green }, -- todo notes

		-- Diff
		["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
		["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
		["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = C.monokai_violet }, -- Tags like html tag names.
		["@tag.attribute"] = { fg = C.monokai_cyan, style = O.styles.miscs or { "italic" } }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = C.monokai_blue }, -- Tag delimiter like < > /

		-- Misc
		["@error"] = { link = "Error" },

		-- Language specific:
		-- bash
		["@function.builtin.bash"] = { fg = C.red, style = O.styles.miscs or { "italic" } },

		-- markdown
		["@markup.heading.1.markdown"] = { link = "rainbow1" },
		["@markup.heading.2.markdown"] = { link = "rainbow2" },
		["@markup.heading.3.markdown"] = { link = "rainbow3" },
		["@markup.heading.4.markdown"] = { link = "rainbow4" },
		["@markup.heading.5.markdown"] = { link = "rainbow5" },
		["@markup.heading.6.markdown"] = { link = "rainbow6" },

		-- java
		["@constant.java"] = { fg = C.monokai_cyan },

		-- css
		["@property.css"] = { fg = C.white },
		["@property.id.css"] = { fg = C.blue },
		["@property.class.css"] = { fg = C.yellow },
		["@type.css"] = { fg = C.white },
		["@type.tag.css"] = { fg = C.monokai_violet },
		["@string.plain.css"] = { fg = C.monokai_orange },
		["@number.css"] = { fg = C.monokai_orange },

		-- toml
		["@property.toml"] = { fg = C.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = C.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = C.monokai_yellow }, -- For constructor calls and definitions: = { } in Lua.

		-- typescript
		["@property.typescript"] = { fg = C.white, style = O.styles.properties or {} },
		["@constructor.typescript"] = { fg = C.white },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = C.white },
		["@tag.attribute.tsx"] = { fg = C.monokai_cyan, style = O.styles.miscs or { "italic" } },

		-- yaml
		["@variable.member.yaml"] = { fg = C.blue }, -- For fields.

		-- Ruby
		["@string.special.symbol.ruby"] = { fg = C.monokai_yellow },

		-- PHP
		["@function.method.php"] = { link = "Function" },
		["@function.method.call.php"] = { link = "Function" },

		-- C/CPP
		["@type.builtin.c"] = { fg = C.yellow, style = {} },
		["@property.cpp"] = { fg = C.white },
		["@type.builtin.cpp"] = { fg = C.yellow, style = {} },

		-- gitcommit
		["@comment.warning.gitcommit"] = { fg = C.yellow },

		-- Misc
		gitcommitSummary = { fg = C.monokai_yellow, style = O.styles.miscs or { "italic" } },
		zshKSHFunction = { link = "Function" },
	}

	-- Legacy highlights
	colors["@parameter"] = colors["@variable.parameter"]
	colors["@field"] = colors["@variable.member"]
	colors["@namespace"] = colors["@module"]
	colors["@float"] = colors["@number.float"]
	colors["@symbol"] = colors["@string.special.symbol"]
	colors["@string.regex"] = colors["@string.regexp"]

	colors["@text"] = colors["@markup"]
	colors["@text.strong"] = colors["@markup.strong"]
	colors["@text.emphasis"] = colors["@markup.italic"]
	colors["@text.underline"] = colors["@markup.underline"]
	colors["@text.strike"] = colors["@markup.strikethrough"]
	colors["@text.uri"] = colors["@markup.link.url"]
	colors["@text.math"] = colors["@markup.math"]
	colors["@text.environment"] = colors["@markup.environment"]
	colors["@text.environment.name"] = colors["@markup.environment.name"]

	colors["@text.title"] = colors["@markup.heading"]
	colors["@text.literal"] = colors["@markup.raw"]
	colors["@text.reference"] = colors["@markup.link"]

	colors["@text.todo.checked"] = colors["@markup.list.checked"]
	colors["@text.todo.unchecked"] = colors["@markup.list.unchecked"]

	colors["@comment.note"] = colors["@comment.hint"]

	-- @text.todo is now for todo comments, not todo notes like in markdown
	colors["@text.todo"] = colors["@comment.todo"]
	colors["@text.warning"] = colors["@comment.warning"]
	colors["@text.note"] = colors["@comment.note"]
	colors["@text.danger"] = colors["@comment.error"]

	-- @text.uri is now
	-- > @markup.link.url in markup links
	-- > @string.special.url outside of markup
	colors["@text.uri"] = colors["@markup.link.uri"]

	colors["@method"] = colors["@function.method"]
	colors["@method.call"] = colors["@function.method.call"]

	colors["@text.diff.add"] = colors["@diff.plus"]
	colors["@text.diff.delete"] = colors["@diff.minus"]

	colors["@define"] = colors["@keyword.directive.define"]
	colors["@preproc"] = colors["@keyword.directive"]
	colors["@storageclass"] = colors["@keyword.storage"]
	colors["@conditional"] = colors["@keyword.conditional"]
	colors["@exception"] = colors["@keyword.exception"]
	colors["@include"] = colors["@keyword.import"]
	colors["@repeat"] = colors["@keyword.repeat"]

	colors["@symbol.ruby"] = colors["@string.special.symbol.ruby"]

	colors["@variable.member.yaml"] = colors["@field.yaml"]

	colors["@text.title.1.markdown"] = colors["@markup.heading.1.markdown"]
	colors["@text.title.2.markdown"] = colors["@markup.heading.2.markdown"]
	colors["@text.title.3.markdown"] = colors["@markup.heading.3.markdown"]
	colors["@text.title.4.markdown"] = colors["@markup.heading.4.markdown"]
	colors["@text.title.5.markdown"] = colors["@markup.heading.5.markdown"]
	colors["@text.title.6.markdown"] = colors["@markup.heading.6.markdown"]

	colors["@method.php"] = colors["@function.method.php"]
	colors["@method.call.php"] = colors["@function.method.call.php"]

	return colors
end

return M
