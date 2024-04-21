local M = {}

function M.get()
	return {
		OverseerPENDING = { fg = C.grey },
		OverseerRUNNING = { fg = C.monokai_yellow },
		OverseerSUCCESS = { fg = C.green },
		OverseerCANCELED = { fg = C.green },
		OverseerFAILURE = { fg = C.monokai_red },
		OverseerTask = { fg = C.monokai_blue },
		OverseerTaskBorder = { fg = C.monokai_blue },
		OverseerOutput = { fg = C.brown },
		OverseerComponent = { fg = C.monokai_yellow },
		OverseerField = { fg = C.green },
	}
end

return M
