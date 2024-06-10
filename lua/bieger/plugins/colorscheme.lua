return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    vim.cmd([[colorscheme kanagawa-wave]])
  end
}

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

--   config = function()
--     vim.cmd([[colorscheme onedark]])
--   end
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,

--   config = function()
--     vim.cmd([[colorscheme catppuccin-macchiato]])
--   end
-- }
