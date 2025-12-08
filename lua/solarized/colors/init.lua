local bases = require('solarized.colors.bases')

--- @class solarized.ThemedColors All named colors available for each (light/dark) theme.
---
--- This lists the basic colors defined in the original theme, as well as a few
--- preselected colors to use in LSP/Semantic tokens. Those additional colors are
--- completely optional, but are based on the original colors.
---
--- @field bases    solarized.BaseColors The base colors, available for light and dark variants.
---
--- @field bg       string The main background color, used for the base layer in all programs.
--- @field bg_hl    string The alternative background color, used for highlights and standout elements.
--- @field text_alt	string The alternative text color, usually used for comments and 'secondary' content.
--- @field text     string The main text color, used for 'primary' content and body text.
--- @field fg       string The main foreground color, used for emphasized content.
--- @field fg_hl    string The alternative forground color, one notch brighter/darker than `fg`.
---
--- @field comments     string The color selected for comments, based on the theme.
--- @field selection    string The color used for the background of any selection.
--- @field contrast     string A contrasting background color.
--- @field active       string A background color to mean this element is active / selected.
--- @field border       string
--- @field line_numbers string
--- @field highlight    string
--- @field disabled     string
--- @field cursor       string
--- @field accent       string
--- @field link         string To designate a link.
--- @field sidebar?     string The color of the symbol gutter, which can be high-contrast.
--- @field float?       string The color of floating windows, which can be high-contrast.
--- @field none         "NONE" A constant, used to mean 'no color'.

local dark = require('solarized.colors.dark')
local light = require('solarized.colors.light')

local solarized = vim.o.background == 'dark' and dark or light

-- ---------------
-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.solarized_contrast == false then
    solarized.sidebar = solarized.bg
    solarized.float = solarized.bg
else
    solarized.sidebar = solarized.bg_hl
    solarized.float = solarized.bg_hl
end

return solarized
