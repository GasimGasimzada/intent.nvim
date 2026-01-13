local colors = require("intent.colors")

return {
	normal = {
		a = { fg = colors.bg, bg = colors.fg_dim, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_alt },
		c = { fg = colors.fg_mid, bg = colors.bg_alt2 },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_alt },
		c = { fg = colors.fg_mid, bg = colors.bg_alt2 },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_alt },
		c = { fg = colors.fg_mid, bg = colors.bg_alt2 },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_alt },
		c = { fg = colors.fg_mid, bg = colors.bg_alt2 },
	},
	command = {
		a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_alt },
		c = { fg = colors.fg_mid, bg = colors.bg_alt2 },
	},
	inactive = {
		a = { fg = colors.fg_dim, bg = colors.bg_alt },
		b = { fg = colors.fg_dim, bg = colors.bg_alt },
		c = { fg = colors.fg_dim, bg = colors.bg_alt2 },
	},
}
