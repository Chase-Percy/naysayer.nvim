local M = {}

function M.apply(flavour)
	flavour = flavour or require("naysayer").flavour

	local _O, _C, _U = O, C, U -- Borrowing global var (setfenv doesn't work with require)
	O = require("naysayer").options
	C = require("naysayer.palettes").get_palette(flavour)
	U = require "naysayer.utils.colors"

	C.none = "NONE"

	local dim_percentage = O.dim_inactive.percentage
	C.dim = O.dim_inactive.shade == "dark"
			and U.vary_color(
				{ latte = U.darken(C.darkest_green, dim_percentage, C.darkest_green) },
				U.darken(C.darkest_green, dim_percentage, C.darkest_green)
			)
		or U.vary_color(
			{ latte = U.lighten("#FBFCFD", dim_percentage, C.darkest_green) },
			U.lighten(C.darker_green, dim_percentage, C.darkest_green)
		)

	local theme = {}
	theme.syntax = require("naysayer.groups.syntax").get()
	theme.editor = require("naysayer.groups.editor").get()
	local final_integrations = {}

	-- https://github.com/naysayer/nvim/pull/624
	if type(O.integrations.dap) == "table" and O.integrations.dap.enable_ui ~= nil then
		O.integrations.dap_ui = O.integrations.dap.enable_ui
		O.integrations.dap.enable_ui = nil
	end

	for integration in pairs(O.integrations) do
		local cot = false
		if type(O.integrations[integration]) == "table" then
			if O.integrations[integration].enabled == true then cot = true end
		else
			if O.integrations[integration] == true then
				local default = require("naysayer").default_options.integrations[integration]
				O.integrations[integration] = type(default) == "table" and default or {}
				O.integrations[integration].enabled = true
				cot = true
			end
		end

		if cot then
			final_integrations = vim.tbl_deep_extend(
				"force",
				final_integrations,
				require("naysayer.groups.integrations." .. integration).get()
			)
		end
	end

	theme.integrations = final_integrations -- plugins
	theme.terminal = require("naysayer.groups.terminal").get() -- terminal colors
	local user_highlights = O.highlight_overrides
	if type(user_highlights[flavour]) == "function" then user_highlights[flavour] = user_highlights[flavour](C) end
	theme.custom_highlights = vim.tbl_deep_extend(
		"keep",
		user_highlights[flavour] or {},
		type(user_highlights.all) == "function" and user_highlights.all(C) or user_highlights.all or {}
	)

	O, C, U = _O, _C, _U -- Returning global var

	return theme
end

return M
