local bases = require('solarized.colors.bases')

--- @class SolarizedColors All named colors available for each (light/dark) theme.
---
--- This lists the basic colors defined in the original theme, as well as a few
--- preselected colors to use in LSP/Semantic tokens. Those additional colors are
--- completely optional, but are based on the original colors.
---
--- @field base03	string The darkest background tone (lightness: 15).
--- @field base02	string The other dark background tone (lightness: 20).
--- @field base01	string The darkest content tone (lightness: 45).
--- @field base00	string The second darkest content tone (lightness: 50).
--- @field base0	string The second lightest content tone (lightness: 60).
--- @field base1	string The lightest content tone (lightness: 65).
--- @field base2	string The other light background tone (lightness: 92).
--- @field base3	string The brightest background tone (lightness: 97).
---
--- @field red		string The basic 'red' color.
--- @field green	string The basic 'green' color.
--- @field yellow	string The basic 'yellow' color.
--- @field cyan		string The basic 'cyan' color.
--- @field blue		string The basic 'blue' color.
--- @field orange	string The basic 'orange' color.
--- @field magenta	string The basic 'magenta' color.
--- @field violet	string The basic 'violet' color.
---
--- @field bg		string The main background color, based on the theme selected.
--- @field bg_alt	string The alternative background color, based on the theme selected.
--- @field fg		string The main foreground color, based on the theme selected.
--- @field text		string The text color of the chosen theme.
--- @field text_alt	string The alternative text color of the chosen theme.
--- @field text_hl	string The most extreme text color of the chosen theme: darkest or brightest.
---
--- @field comments		string The color selected for comments, based on the theme.
--- @field selection	string
--- @field contrast		string
--- @field active		string
--- @field border		string
--- @field line_numbers	string
--- @field highlight	string
--- @field disabled		string
--- @field cursor		string
--- @field accent		string
--- @field link			string To designate a link.
--- @field sidebar?		string The color of the symbol gutter, which can be high-contrast.
--- @field float?		string The color of floating windows, which can be high-contrast.
--- @field none			"NONE" Used to mean 'no color'.

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
    solarized.sidebar = solarized.bg_alt
    solarized.float = solarized.bg_alt
end

return solarized
