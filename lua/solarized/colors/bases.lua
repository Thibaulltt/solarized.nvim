-- solarized/colors/bases.lua: The basic color combos setup by Ethan Schnoover. --

--- @class solarized.BaseColors All base colors originally defined by Ethan Schoonover.
---
--- @field base03   string The darkest background tone (lightness: 15).
--- @field base02   string The other dark background tone (lightness: 20).
--- @field base01   string The darkest content tone (lightness: 45).
--- @field base00   string The second darkest content tone (lightness: 50).
--- @field base0    string The second lightest content tone (lightness: 60).
--- @field base1    string The lightest content tone (lightness: 65).
--- @field base2    string The other light background tone (lightness: 92).
--- @field base3    string The brightest background tone (lightness: 97).
---
--- @field red      string The basic 'red' color.
--- @field green    string The basic 'green' color.
--- @field yellow   string The basic 'yellow' color.
--- @field cyan     string The basic 'cyan' color.
--- @field blue	    string The basic 'blue' color.
--- @field orange   string The basic 'orange' color.
--- @field magenta  string The basic 'magenta' color.
--- @field violet   string The basic 'violet' color.

local bases = {
    -- Base tones:
    base03 =  '#002b36',
    base02 =  '#073642',
    base01 =  '#586e75',
    base00 =  '#657b83',
    base0 =   '#839496',
    base1 =   '#93a1a1',
    base2 =   '#eee8d5',
    base3 =   '#fdf6e3',
    -- Base colors:
    red =     '#dc322f',
    green =   '#859900',
    yellow =  '#b58900',
    cyan =    '#2aa198',
    blue =    '#268bd2',
    orange =  '#cb4b16',
    magenta = '#d33682',
    violet =  '#6c71c4',
}

return bases
