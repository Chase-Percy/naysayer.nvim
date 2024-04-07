local M = {}

function M.get()
	return {
		OperatorSandwichAdd = { bg = C.blue, fg = C.darkest_green },
		OperatorSandwichBuns = { bg = C.blue, fg = C.darkest_green },
		OperatorSandwichChange = { bg = C.blue, fg = C.darkest_green },
		OperatorSandwichDelete = { bg = C.blue, fg = C.darkest_green },
	}
end

return M
