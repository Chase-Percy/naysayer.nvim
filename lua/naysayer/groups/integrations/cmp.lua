local M = {}

function M.get()
	return {
		CmpItemAbbr = { fg = C.brown },
		CmpItemAbbrDeprecated = { fg = C.tiffany, style = { "strikethrough" } },
		CmpItemKind = { fg = C.white },
		CmpItemMenu = { fg = C.brown },
		CmpItemAbbrMatch = { fg = C.monokai_orange, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.monokai_orange, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.white },
		CmpItemKindKeyword = { fg = C.white },
		CmpItemKindText = { fg = C.white },
		CmpItemKindMethod = { fg = C.white },
		CmpItemKindConstructor = { fg = C.white },
		CmpItemKindFunction = { fg = C.white },
		CmpItemKindFolder = { fg = C.white },
		CmpItemKindModule = { fg = C.white },
		CmpItemKindConstant = { fg = C.white },
		CmpItemKindField = { fg = C.white },
		CmpItemKindProperty = { fg = C.white },
		CmpItemKindEnum = { fg = C.white },
		CmpItemKindUnit = { fg = C.white },
		CmpItemKindClass = { fg = C.white },
		CmpItemKindVariable = { fg = C.white },
		CmpItemKindFile = { fg = C.white },
		CmpItemKindInterface = { fg = C.white },
		CmpItemKindColor = { fg = C.white },
		CmpItemKindReference = { fg = C.white },
		CmpItemKindEnumMember = { fg = C.white },
		CmpItemKindStruct = { fg = C.white },
		CmpItemKindValue = { fg = C.white },
		CmpItemKindEvent = { fg = C.white },
		CmpItemKindOperator = { fg = C.white },
		CmpItemKindTypeParameter = { fg = C.white },
		CmpItemKindCopilot = { fg = C.white },
	}
end

return M
