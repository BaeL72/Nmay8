return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					exclude = {},
				},

				ensure_installed = {
					"bashls", -- bash lsp
					"stylua", -- For format lua files
				},
			})
		end,
	},
}
