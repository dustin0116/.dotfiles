return {
	"navarasu/onedark.nvim",
	lazy=false,
	priority = 999,
  	options = {
    		cursorline = true
  	},
	config = function()
		vim.cmd('colorscheme onedark')
  	end
}
