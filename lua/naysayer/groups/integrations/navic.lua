local M = {}

function M.get()
	local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.none
	if O.integrations.navic.custom_bg == "lualine" then background = C.darkest_green end

	return {
		NavicIconsFile = { fg = C.monokai_blue, bg = background },
		NavicIconsModule = { fg = C.monokai_blue, bg = background },
		NavicIconsNamespace = { fg = C.monokai_blue, bg = background },
		NavicIconsPackage = { fg = C.monokai_blue, bg = background },
		NavicIconsClass = { fg = C.monokai_yellow, bg = background },
		NavicIconsMethod = { fg = C.monokai_blue, bg = background },
		NavicIconsProperty = { fg = C.green, bg = background },
		NavicIconsField = { fg = C.green, bg = background },
		NavicIconsConstructor = { fg = C.monokai_blue, bg = background },
		NavicIconsEnum = { fg = C.green, bg = background },
		NavicIconsInterface = { fg = C.monokai_yellow, bg = background },
		NavicIconsFunction = { fg = C.monokai_blue, bg = background },
		NavicIconsVariable = { fg = C.monokai_yellow, bg = background },
		NavicIconsConstant = { fg = C.monokai_orange, bg = background },
		NavicIconsString = { fg = C.green, style = O.styles.strings, bg = background },
		NavicIconsNumber = { fg = C.monokai_orange, bg = background },
		NavicIconsBoolean = { fg = C.monokai_orange, bg = background },
		NavicIconsArray = { fg = C.monokai_orange, bg = background },
		NavicIconsObject = { fg = C.monokai_orange, bg = background },
		NavicIconsKey = { fg = C.monokai_magenta, style = O.styles.keywords, bg = background },
		NavicIconsNull = { fg = C.monokai_orange, bg = background },
		NavicIconsEnumMember = { fg = C.monokai_red, bg = background },
		NavicIconsStruct = { fg = C.monokai_blue, bg = background },
		NavicIconsEvent = { fg = C.monokai_blue, bg = background },
		NavicIconsOperator = { fg = C.monokai_blue, bg = background },
		NavicIconsTypeParameter = { fg = C.monokai_blue, bg = background },
		NavicText = { fg = C.monokai_blue, bg = background },
		NavicSeparator = { fg = C.brown, bg = background },
	}
end

return M
