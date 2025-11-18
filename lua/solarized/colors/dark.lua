-- Colors for the dark variant of Solarized.

local bases = require('solarized.colors.bases')

--- @type SolarizedColors
local solarized = {
    base03 =        bases.base03,
    base02 =        bases.base02,
    base01 =        bases.base01,
    base00 =        bases.base00,
    base0 =         bases.base0,
    base1 =         bases.base1,
    base2 =         bases.base2,
    base3 =         bases.base3,

    red =           bases.red,
    green =         bases.green,
    yellow =        bases.yellow,
    cyan =          bases.cyan,
    blue =          bases.blue,
    orange =        bases.orange,
    magenta =       bases.magenta,
    violet =        bases.violet,

    -- Additional, optional colors:
    white =         '#eee8d5',
    gray =          '#073642',
    black =         '#002b36',
    purple =        '#6c71c4',
    paleblue =      '#586e75',

    -- Defaults for the dark variant:
    bg =        bases['base03'],
    bg_alt =    bases['base02'],
    text_alt =  bases['base01'],
    text_hl =   bases['base2'],
    text =      bases['base0'],
    fg =        bases['base1'],

    comments =      '#657b83',
    selection =     '#586e75',
    contrast =      '#002b36',
    active =        '#d8ccc4',
    border =        '#002b36',
    line_numbers =  '#839496',
    highlight =     '#d8ccc4',
    disabled =      '#073642',
    cursor =        '#268bd2',
    accent =        '#073642',

    error =         '#dc322f',
    link =          '#2aa198',

    none =          'NONE'
}

return solarized
