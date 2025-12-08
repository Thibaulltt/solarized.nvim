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
    contrast =      bases.base02, -- Same as bg_hl
    active =        bases.base1,  -- Same as fg
    border =        '#002b36',
    line_numbers =  '#839496',
    highlight =     '#d8ccc4',
    disabled =      bases.base01,
    cursor =        bases.base0,
    accent =        bases.base2,

    error =         bases.red,
    link =          bases.cyan,

    none =          'NONE'
}

return solarized
