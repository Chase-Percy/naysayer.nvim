local M = {}

function M.get()
	return {
		OverseerPENDING = { fg = C.grey },
		OverseerRUNNING = { fg = C.yellow },
		OverseerSUCCESS = { fg = C.green },
		OverseerCANCELED = { fg = C.green },
		OverseerFAILURE = { fg = C.red },
		OverseerTask = { fg = C.blue },
		OverseerTaskBorder = { fg = C.monokai_blue },
		OverseerOutput = { fg = C.brown },
		OverseerComponent = { fg = C.yellow },
		OverseerField = { fg = C.green },
	}
end

return M
