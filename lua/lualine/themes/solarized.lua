local colors = require('solarized.colors')

local solarized = {}

local default_x = { fg = colors.text, bg = colors.bg }
local default_y = { fg = colors.text, bg = colors.bg_hl }
local default_z = { fg = colors.text, bg = colors.bg_hl, gui = 'bold' }

solarized.normal = {
	a = { fg = colors.fg, bg = colors.bg_hl, gui = 'bold' },
	b = { fg = colors.text, bg = colors.bg_hl },
	c = { fg = colors.text, bg = colors.bg },
	x = default_x,
	y = default_y,
	z = default_z,
}

solarized.insert = {
	a = { fg = colors.highlight, bg = colors.bases.green, gui = 'bold' },
	b = { fg = colors.text, bg = colors.bg_hl },
	x = default_x,
	y = default_y,
	z = default_z,
}

solarized.visual = {
	a = { fg = colors.highlight, bg = colors.bases.violet, gui = 'bold' },
	b = { fg = colors.text, bg = colors.bg_hl },
	x = default_x,
	y = default_y,
	z = default_z,
}

solarized.replace = {
	a = { fg = colors.highlight, bg = colors.bases.red, gui = 'bold' },
	b = { fg = colors.text, bg = colors.bg_hl },
	x = default_x,
	y = default_y,
	z = default_z,
}

solarized.command = {
	a = { fg = colors.highlight, bg = colors.bases.yellow, gui = 'bold' },
	b = { fg = colors.text, bg = colors.bg_hl },
	x = default_x,
	y = default_y,
	z = default_z,
}

solarized.active = solarized.normal

solarized.inactive = {
	a = { fg = colors.disabled, bg = colors.bg, gui = 'bold' },
	b = { fg = colors.disabled, bg = colors.bg },
	c = { fg = colors.disabled, bg = colors.bg },
	x = default_x,
	y = default_y,
	z = default_z,
}

return solarized
