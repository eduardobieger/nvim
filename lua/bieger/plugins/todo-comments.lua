return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("todo-comments").setup({
			colors = {
				info = "#0db9d7",
			},
		})
	end,
}
