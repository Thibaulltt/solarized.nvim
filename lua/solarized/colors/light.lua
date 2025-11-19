-- Colors for the light variant of Solarized.

local bases = require('solarized.colors.bases')

--- @type solarized.ThemedColors
local solarized = {
	bases = bases,

    -- Additional, optional colors:
    white =         '#eee8d5',
    gray =          '#073642',
    black =         '#002b36',
    purple =        '#6c71c4',
    paleblue =      '#586e75',

    -- Defaults for the light variant:
    bg =        bases.base3,
    bg_hl =     bases.base2,
    text_alt =  bases.base1,
    text =      bases.base00,
    fg =        bases.base01,
    fg_hl =     bases.base02,

    comments =      bases.base1,
    selection =     '#d3cfc1',
    contrast =      '#002b36',
    active =        '#d8ccc4',
    border =        '#002b36',
    line_numbers =  '#839496',
    highlight =     '#d8ccc4',
    disabled =      '#073642',
    cursor =        '#268bd2',
    accent =        '#073642',

    error =         bases.red,
    link =          bases.cyan,

    none =          'NONE'
}

return solarized

