local opt = vim.opt

-- Tab/Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Appearance
opt.number = true
opt.relativenumber = true

-- optionally enable 24-bit colour
opt.termguicolors = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Set the background color for the current line
opt.fillchars = { eob = " " }

-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
opt.signcolumn = "yes"

-- Diagonistic Configuration
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✘",
			[vim.diagnostic.severity.WARN] = "▲",
			[vim.diagnostic.severity.HINT] = "⚑",
			[vim.diagnostic.severity.INFO] = "»",
		},
	},
})
