return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig_defaults = require("lspconfig").util.default_config
		lspconfig_defaults.capabilities = vim.tbl_deep_extend(
			"force",
			lspconfig_defaults.capabilities,
			require("cmp_nvim_lsp").default_capabilities()
		)
		require("mason").setup()
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = lspconfig_defaults.capabilities,
					})
				end,
			},
		})
		-- -- Add cmp_nvim_lsp capabilities settings to lspconfig
		-- -- This should be executed before you configure any language server
		-- lspconfig.pyright.setup({})
		-- lspconfig.ts_ls.setup({})
	end,
}
