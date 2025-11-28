-- Colors for the dark variant of Solarized.

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

    -- Defaults for the dark variant:
    bg =        bases.base03,
    bg_hl =     bases.base02,
    text_alt =  bases.base01,
    text =      bases.base0,
    fg =        bases.base1,
    fg_hl =     bases.base2,

    comments =      bases.base01,
    selection =     '#586e75',
    contrast =      '#002b36',
    active =        '#d8ccc4',
    border =        '#002b36',
    line_numbers =  '#839496',
    highlight =     '#d8ccc4',
    disabled =      bases.text_alt,
    cursor =        '#268bd2',
    accent =        '#073642',

    error =         bases.red,
    link =          bases.cyan,

    none =          'NONE'
}

return solarized
