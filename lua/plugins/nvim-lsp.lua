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
					exclude = {
						"ts_ls",
					},
				},

				ensure_installed = {
					"bashls", -- bash lsp
					"stylua", -- For format lua files
					"pyright",
					"ts_ls",
				},
			})
		end,
	},
	{
		"pmizio/typescript-tools.nvim",
		ft = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
		},
		config = function()
			require("typescript-tools").setup({})
		end,
	},
}
