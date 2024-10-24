return {
	"stevearc/conform.nvim",
	opts = {},

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				go = {
					"gofumpt",
				},
			},
			format_on_save = {
				enabled = true,
				timeout_ms = 500,
				filetypes = {
					"lua",
					"python",
					"go",
				},
			},
		})
	end,
}
