return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,

	config = function()
		vim.g.gruvbox_material_foreground = "original"
		vim.g.gruvbox_material_background = "soft"
		vim.g.gruvbox_material_enable_italic = true
		vim.cmd.colorscheme([[gruvbox-material]])
	end,
}

-- return {
-- 	"uloco/bluloco.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	dependencies = { "rktjmp/lush.nvim" },
--
-- 	config = function()
-- 		vim.opt.termguicolors = true
-- 		vim.cmd([[colorscheme bluloco]])
-- 	end,
-- }

-- return {
-- 	"drewtempelmeyer/palenight.vim",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		vim.cmd([[colorscheme palenight]])
-- 	end,
-- }

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		vim.cmd([[colorscheme kanagawa-wave]])
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
--
-- 	config = function()
-- 		vim.cmd([[colorscheme tokyonight-moon]])
-- 	end,
-- }

-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000,
--
--   config = function()
--     vim.cmd([[colorscheme onedark]])
--   end
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--
--   config = function()
--     vim.cmd([[colorscheme catppuccin-macchiato]])
--   end
-- }
