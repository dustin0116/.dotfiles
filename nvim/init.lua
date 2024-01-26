local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("config.remap")
require("config.options")
-- Set the background color for the current line
-- vim.cmd('highlight CursorLine cterm=NONE ctermbg=238 guibg=#3E4451')
require("lazy").setup("plugins")
local opts = {
	rtp = {
		disabled_plugins = {
			"netrw",
			"netrwPlugin",
		}
	}
}
