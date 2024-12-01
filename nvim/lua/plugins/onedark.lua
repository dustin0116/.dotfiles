return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 999,
	options = {
		cursorline = true,
	},
	config = function()
		require("onedark").setup({
			-- Main Options --
			style = "darker",
			-- Change code style --
			-- Options are italic, bold, underline, none
			-- You can configure multiple styles with comma separated, For e.g., keywords = 'italic,bold'
			code_style = {
				comments = "italic",
				keywords = "none",
				functions = "none",
				strings = "none",
				variables = "none",
			},
		})
		require("onedark").load()
	end,
}
