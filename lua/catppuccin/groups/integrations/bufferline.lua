local M = {}
local ctp = require "catppuccin"
local O = ctp.options

function M.get(user_config)
	user_config = user_config or {}
	-- Backward compatibility
	if O.integrations.bufferline then return {} end
	return function()
		local C = require("catppuccin.palettes").get_palette()
		local transparent_background = O.transparent_background
		local bg_highlight = (transparent_background and O.dim_inactive.enabled and C.dim)
			or (transparent_background and "NONE")
			or (O.dim_inactive.enabled and C.dim)
			or C.darkest_green

		local active_bg = transparent_background and "NONE" or C.darkest_green
		local inactive_bg = transparent_background and "NONE" or C.darkest_green

		local separator_fg = O.transparent_background and C.dark_green or C.darkest_green

		local styles = user_config.styles or { "bold", "italic" }

		local highlights = {
			-- buffers
			background = { bg = inactive_bg },
			buffer_visible = { fg = C.dark_green, bg = inactive_bg },
			buffer_selected = { fg = C.brown, bg = active_bg, style = styles }, -- current
			-- Duplicate
			duplicate_selected = { fg = C.brown, bg = active_bg, style = styles },
			duplicate_visible = { fg = C.dark_green, bg = inactive_bg, style = styles },
			duplicate = { fg = C.dark_green, bg = inactive_bg, style = styles },
			-- tabs
			tab = { fg = C.dark_green, bg = inactive_bg },
			tab_selected = { fg = C.monokai_blue, bg = active_bg, bold = true },
			tab_separator = { fg = separator_fg, bg = inactive_bg },
			tab_separator_selected = { fg = separator_fg, bg = active_bg },

			tab_close = { fg = C.red, bg = inactive_bg },
			indicator_selected = { fg = C.monokai_orange, bg = active_bg, style = styles },
			-- separators
			separator = { fg = separator_fg, bg = inactive_bg },
			separator_visible = { fg = separator_fg, bg = inactive_bg },
			separator_selected = { fg = separator_fg, bg = active_bg },
			offset_separator = { fg = separator_fg, bg = active_bg },
			-- close buttons
			close_button = { fg = C.dark_green, bg = inactive_bg },
			close_button_visible = { fg = C.dark_green, bg = inactive_bg },
			close_button_selected = { fg = C.red, bg = active_bg },
			-- Empty fill
			fill = { bg = bg_highlight },
			-- Numbers
			numbers = { fg = C.brown, bg = inactive_bg },
			numbers_visible = { fg = C.brown, bg = inactive_bg },
			numbers_selected = { fg = C.brown, bg = active_bg, style = styles },
			-- Errors
			error = { fg = C.red, bg = inactive_bg },
			error_visible = { fg = C.red, bg = inactive_bg },
			error_selected = { fg = C.red, bg = active_bg, style = styles },
			error_diagnostic = { fg = C.red, bg = inactive_bg },
			error_diagnostic_visible = { fg = C.red, bg = inactive_bg },
			error_diagnostic_selected = { fg = C.red, bg = active_bg },
			-- Warnings
			warning = { fg = C.yellow, bg = inactive_bg },
			warning_visible = { fg = C.yellow, bg = inactive_bg },
			warning_selected = { fg = C.yellow, bg = active_bg, style = styles },
			warning_diagnostic = { fg = C.yellow, bg = inactive_bg },
			warning_diagnostic_visible = { fg = C.yellow, bg = inactive_bg },
			warning_diagnostic_selected = { fg = C.yellow, bg = active_bg },
			-- Infos
			info = { fg = C.monokai_blue, bg = inactive_bg },
			info_visible = { fg = C.monokai_blue, bg = inactive_bg },
			info_selected = { fg = C.monokai_blue, bg = active_bg, style = styles },
			info_diagnostic = { fg = C.monokai_blue, bg = inactive_bg },
			info_diagnostic_visible = { fg = C.monokai_blue, bg = inactive_bg },
			info_diagnostic_selected = { fg = C.monokai_blue, bg = active_bg },
			-- Hint
			hint = { fg = C.monokai_cyan, bg = inactive_bg },
			hint_visible = { fg = C.monokai_cyan, bg = inactive_bg },
			hint_selected = { fg = C.monokai_cyan, bg = active_bg, style = styles },
			hint_diagnostic = { fg = C.monokai_cyan, bg = inactive_bg },
			hint_diagnostic_visible = { fg = C.monokai_cyan, bg = inactive_bg },
			hint_diagnostic_selected = { fg = C.monokai_cyan, bg = active_bg },
			-- Diagnostics
			diagnostic = { fg = C.brown, bg = inactive_bg },
			diagnostic_visible = { fg = C.brown, bg = inactive_bg },
			diagnostic_selected = { fg = C.brown, bg = active_bg, style = styles },
			-- Modified
			modified = { fg = C.monokai_orange, bg = inactive_bg },
			modified_selected = { fg = C.monokai_orange, bg = active_bg },
		}

		local user_highlights = user_config.custom or {}
		highlights =
			vim.tbl_deep_extend("keep", user_highlights[ctp.flavour] or {}, user_highlights.all or {}, highlights)

		for _, color in pairs(highlights) do
			-- Because default is gui=bold,italic
			color.italic = false
			color.bold = false

			if color.style then
				for _, style in pairs(color.style) do
					color[style] = true
					if O.no_italic and style == "italic" then color[style] = false end
					if O.no_bold and style == "bold" then color[style] = false end
					if O.no_underline and style == "underline" then color[style] = false end
				end
			end
			color.style = nil
		end

		return highlights
	end
end

return M
