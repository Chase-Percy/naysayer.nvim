local M = {}

function M.get()
	return {
		CmpItemAbbr = { fg = C.green },
		CmpItemAbbrDeprecated = { fg = C.tiffany, style = { "strikethrough" } },
		CmpItemKind = { fg = C.blue },
		CmpItemMenu = { fg = C.brown },
		CmpItemAbbrMatch = { fg = C.brown, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.brown, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.monokai_violet },
		CmpItemKindKeyword = { fg = C.red },
		CmpItemKindText = { fg = C.monokai_cyan },
		CmpItemKindMethod = { fg = C.blue },
		CmpItemKindConstructor = { fg = C.blue },
		CmpItemKindFunction = { fg = C.blue },
		CmpItemKindFolder = { fg = C.blue },
		CmpItemKindModule = { fg = C.blue },
		CmpItemKindConstant = { fg = C.monokai_orange },
		CmpItemKindField = { fg = C.green },
		CmpItemKindProperty = { fg = C.green },
		CmpItemKindEnum = { fg = C.green },
		CmpItemKindUnit = { fg = C.green },
		CmpItemKindClass = { fg = C.yellow },
		CmpItemKindVariable = { fg = C.monokai_yellow },
		CmpItemKindFile = { fg = C.blue },
		CmpItemKindInterface = { fg = C.yellow },
		CmpItemKindColor = { fg = C.red },
		CmpItemKindReference = { fg = C.red },
		CmpItemKindEnumMember = { fg = C.red },
		CmpItemKindStruct = { fg = C.blue },
		CmpItemKindValue = { fg = C.monokai_orange },
		CmpItemKindEvent = { fg = C.blue },
		CmpItemKindOperator = { fg = C.blue },
		CmpItemKindTypeParameter = { fg = C.blue },
		CmpItemKindCopilot = { fg = C.monokai_cyan },
	}
end

return M
