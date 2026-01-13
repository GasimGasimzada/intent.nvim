local function create_color_scheme()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "intent"

	local colors = require("intent.colors")

	local tokens = {
		function_call = {
			fg = colors.orange,
			nocombine = true,
			bold = true,
		},
		value = {
			fg = colors.orange_dim,
		},
		value_important = {
			fg = colors.orange_dim,
			bold = true,
		},
	}

	local set_hl = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	set_hl("Normal", { fg = colors.fg, bg = colors.bg })
	set_hl("NormalFloat", { fg = colors.fg, bg = colors.bg_alt })
	set_hl("FloatBorder", { fg = colors.border, bg = colors.bg_alt })
	set_hl("FloatFooter", { fg = colors.orange_dim })
	set_hl("CursorLine", {})
	set_hl("CursorLineNr", { fg = colors.fg, bold = true })
	set_hl("LineNr", { fg = colors.fg_dim })
	set_hl("Visual", { bg = "#283457" })
	set_hl("Search", { fg = colors.bg, bg = colors.yellow_dim })
	set_hl("CurSearch", {
		fg = colors.bg,
		bg = colors.orange_dim,
		bold = true,
	})
	set_hl("IncSearch", { fg = colors.bg, bg = colors.orange })
	set_hl("StatusLine", { fg = colors.fg, bg = colors.bg_alt })
	set_hl("StatusLineNC", { fg = colors.fg_dim, bg = colors.bg_alt })
	set_hl("Pmenu", { fg = colors.fg, bg = colors.bg_alt2 })
	set_hl("PmenuSel", { fg = colors.orange_dim, bg = colors.bg_alt })
	set_hl("PmenuSbar", { bg = colors.bg_alt })
	set_hl("PmenuThumb", { bg = colors.fg_dim })
	set_hl("WinSeparator", { fg = colors.border })

	-- Reset
	set_hl("@lsp.type.function", {})
	set_hl("@lsp.type.method", {})

	-- Comment
	set_hl("Comment", { fg = colors.green_dim, italic = true })

	-- Values
	set_hl("Constant", tokens.value)
	set_hl("String", tokens.value)
	set_hl("Character", tokens.value)
	set_hl("Number", tokens.value)
	set_hl("Special", tokens.value)
	set_hl("Statement", tokens.value)

	-- Values that are important
	set_hl("Boolean", tokens.value_important)
	set_hl("@constant.builtin", tokens.value_important)

	-- Not important
	set_hl("Keyword", { fg = colors.fg_dim })
	set_hl("Delimiter", { fg = colors.fg_dim, nocombine = true })
	set_hl("@tag.delimiter", { fg = colors.fg_dim, nocombine = true })

	-- Default
	set_hl("Operator", { fg = colors.fg })
	set_hl("Identifier", { fg = colors.fg })
	set_hl("Function", { fg = colors.fg })
	set_hl("Type", { fg = colors.yellow_dim })

	-- Function call and components
	set_hl("@function.call", tokens.function_call)
	set_hl("@function.method.call", tokens.function_call)

	-- Tags
	set_hl("@tag.builtin.tsx", tokens.function_call)
	set_hl("@tag", tokens.function_call)
	set_hl("@tag.attribute", { fg = colors.yellow })

	-- Types
	set_hl("@type.builtin", { fg = colors.yellow_dim })
	set_hl("@lsp.type.type", { fg = colors.yellow_dim, nocombine = true })
	set_hl("@lsp.type.property", { fg = colors.fg_mid, nocombine = true })

	-- Important
	set_hl("@keyword.return", { fg = colors.red })

	-- Diagnostics
	set_hl("DiagnosticError", { fg = colors.red })
	set_hl("DiagnosticWarn", { fg = colors.yellow })
	set_hl("DiagnosticInfo", { fg = colors.blue })
	set_hl("DiagnosticHint", { fg = colors.yellow })
	set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
	set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
	set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
	set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.yellow })

	set_hl("DiffAdd", { fg = colors.green, bg = "#1a2b22" })
	set_hl("DiffChange", { fg = colors.blue, bg = "#1b2236" })
	set_hl("DiffDelete", { fg = colors.red, bg = "#2b1f1f" })
	set_hl("DiffText", { fg = colors.yellow, bg = "#2a2f4a" })

	-- Markdown & Structured content
	set_hl("@nospell", {})
	set_hl("@markup.link", {})
	set_hl("Title", { fg = colors.orange, bold = true })
	set_hl("Underlined", { underline = true })
	set_hl("@markup.list", { fg = colors.fg_dim })
	set_hl("@markup.list.checked", { fg = colors.orange_dim })
	set_hl("@markup.link", { fg = colors.fg_dim })
	set_hl("@markup.link.url", { fg = colors.blue })
	set_hl("@markup.link.label", { fg = colors.fg })
	set_hl("@markup.quote", { fg = colors.fg })
	set_hl("@markup.raw.block", { fg = colors.fg_dim })
	set_hl("@conceal", { fg = colors.fg_dim })
	set_hl("@label.markdown", { fg = colors.fg_dim })
	set_hl("@punctuation.special.markdown", { fg = colors.fg_dim })

	-- Lua
	set_hl("@constructor.lua", { fg = colors.fg_dim })

	-- Grug far
	set_hl("GrugFarHelpHeader", { fg = colors.fg_dim })
	set_hl("GrugFarHelpWinHeader", { fg = colors.fg_dim })
	set_hl("GrugFarHelpWinActionPrefix", { fg = colors.fg_dim })
	set_hl("GrugFarHelpWinActionText", { fg = colors.orange })
	set_hl("GrugFarResultsActionMessage", { fg = colors.orange })
	set_hl("GrugFarHelpHeader", { fg = colors.fg_dim })
	set_hl("GrugFarInputPlaceholder", { fg = colors.fg_dim })
	set_hl("GrugFarResultsHeader", { fg = colors.fg_dim })
	set_hl("GrugFarResultsPath", { fg = colors.fg_mid, bold = true })
end

create_color_scheme()
