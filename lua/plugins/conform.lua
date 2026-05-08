return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				typescript = { "prettierd" },
				javascript = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascriptreact = { "prettierd" },
				json = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
				yaml = { "prettierd" },
			},
			format_on_save = {
				time_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
