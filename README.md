A Neovim colorscheme based on Jonathan Blow's streams.

![Preview](./images/preview.png)

# Usage

```lua
vim.cmd.colorscheme("naysayer")
```

# Configuration

There is no need to call `setup` if you don't want to change the default options and settings.

```lua
require("naysayer").setup({
    flavour = "naysayer",
    -- flavour = "auto" -- will respect terminal's background
    background = { -- :h background
        light = "naysayer",
        dark = "naysayer",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/naysayer/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme("naysayer")
```

# Customize highlights

## Overwriting colors

Colors can be overwritten using `color_overrides` in the setting, checkout https://github.com/naysayer/nvim/discussions/323 for inspirations:

```lua
require("naysayer").setup {
    color_overrides = {
        all = {
            text = "#ffffff",
        },
        latte = {
            base = "#ff0000",
            mantle = "#242424",
            crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    }
}
```

> [!Note]
> For more information check out our [style-guide](https://github.com/naysayer/naysayer/blob/main/docs/style-guide.md)

## Overwriting highlight groups

Global highlight groups can be overwritten in the setting, for example:

```lua
require("naysayer").setup {
    custom_highlights = function(colors)
        return {
            Comment = { fg = colors.flamingo },
            TabLineSel = { bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
        }
    end
}
```

# Integrations

Naysayer provides theme support for other plugins in the Neovim ecosystem and extended Neovim functionality through _integrations_.

To enable/disable an integration you just need to set it to true/false, for example:

```lua
require("naysayer").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    }
})
```

Some integrations are enabled by default, you can control this behaviour with `default_integrations` option.

```lua
require("naysayer").setup({
    default_integrations = false,
})
```

# Acknowledgments

- This repo began as a fork from [Catppuccin](https://github.com/catppuccin/nvim).
- Color palette taken from [this](https://github.com/nickav/naysayer-theme.el/tree/master) emacs version of the colorscheme.
