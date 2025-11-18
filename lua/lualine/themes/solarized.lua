local colors = require('solarized.colors')

local solarized = {}

solarized.normal = {
	a = { fg = colors.text_hl, bg = colors.bg_alt, gui = 'bold' },
	b = { fg = colors.title, bg = colors.bg_alt },
	c = { fg = colors.text_alt, bg = colors.bg },
}

solarized.insert = {
	a = { fg = colors.text_hl, bg = colors.green, gui = 'bold' },
	b = { fg = colors.title, bg = colors.bg_alt },
}

solarized.visual = {
	a = { fg = colors.text_hl, bg = colors.purple, gui = 'bold' },
	b = { fg = colors.title, bg = colors.bg_alt },
}

solarized.replace = {
	a = { fg = colors.text_hl, bg = colors.red, gui = 'bold' },
	b = { fg = colors.title, bg = colors.bg_alt },
}

solarized.command = {
	a = { fg = colors.text_hl, bg = colors.yellow, gui = 'bold' },
	b = { fg = colors.title, bg = colors.bg_alt },
}

solarized.inactive = {
  a = { fg = colors.disabled, bg = colors.bg_alt, gui = 'bold' },
  b = { fg = colors.disabled, bg = colors.bg_alt },
  c = { fg = colors.disabled, bg = colors.bg }
}

return solarized
