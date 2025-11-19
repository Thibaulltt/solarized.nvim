local colors = require('solarized.colors')

local solarized = {}

solarized.normal = {
	a = { fg = colors.fg_hl, bg = colors.bg_hl, gui = 'bold' },
	b = { fg = colors.fg, bg = colors.bg_hl },
	c = { fg = colors.text, bg = colors.bg },
}

solarized.insert = {
	a = { fg = colors.fg_hl, bg = colors.bases.green, gui = 'bold' },
	b = { fg = colors.fg, bg = colors.bg_hl },
}

solarized.visual = {
	a = { fg = colors.fg_hl, bg = colors.purple, gui = 'bold' },
	b = { fg = colors.fg, bg = colors.bg_hl },
}

solarized.replace = {
	a = { fg = colors.fg_hl, bg = colors.bases.red, gui = 'bold' },
	b = { fg = colors.fg, bg = colors.bg_hl },
}

solarized.command = {
	a = { fg = colors.fg_hl, bg = colors.bases.yellow, gui = 'bold' },
	b = { fg = colors.fg, bg = colors.bg_hl },
}

solarized.inactive = {
  a = { fg = colors.disabled, bg = colors.bg_hl, gui = 'bold' },
  b = { fg = colors.disabled, bg = colors.bg_hl },
  c = { fg = colors.disabled, bg = colors.bg }
}

return solarized
