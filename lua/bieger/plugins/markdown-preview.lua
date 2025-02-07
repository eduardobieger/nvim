return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	-- config = function()
	-- 	require("markdown-preview").setup({
	-- 		open_browser = { enable = true },
	-- 		auto_start = { enable = true },
	-- 	})
	-- end,
}
