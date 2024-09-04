-- return {
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 
-- 	config = function()
-- 		require("cyberdream").setup({
-- 			transparent = true,
-- 			italic_comments = true,
-- 			hide_fillchars = false,
-- 			borderless_telescope = false,
-- 			terminal_colors = true,
-- 			cache = false,
-- 			theme = {
-- 				variant = "default",
-- 			},
-- 			extensions = {
-- 				telescope = true,
-- 				notify = true,
-- 			},
-- 		})
-- 
-- 		vim.cmd([[colorscheme cyberdream]])
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
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--
--   config = function()
--     vim.cmd([[colorscheme kanagawa-wave]])
--   end
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},

--	config = function()
-- 		vim.cmd([[colorscheme tokyonight-storm]])
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

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    vim.cmd([[colorscheme catppuccin-macchiato]])
  end
}
