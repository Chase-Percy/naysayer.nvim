local M = {}

function M.get()
	return {
		DapBreakpoint = { fg = C.red },
		DapBreakpointCondition = { fg = C.yellow },
		DapBreakpointRejected = { fg = C.monokai_violet },
		DapLogPoint = { fg = C.monokai_blue },
		DapStopped = { fg = C.monokai_magenta },
	}
end

return M
