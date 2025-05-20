-- return {
-- 	"catppuccin/nvim",
-- 	lazy = false,
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
--         require("catppuccin").setup({
--             transparent_background = false,
--         })
--
--         vim.cmd.colorscheme "catppuccin-mocha"
-- 	end,
-- }

-- return {
--   "rose-pine/neovim",
--   lazy = false,
--   priority = 1000,
--   name = "rose-pine",
--   config = function()
--     vim.cmd "colorscheme rose-pine"
--   end,
-- }

-- return {
--   "sainnhe/sonokai",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.sonokai_enable_italic = true
--     vim.g.sonokai_style = "atlantis"
--     vim.cmd.colorscheme "sonokai"
--   end,
-- }

-- return {
--   "sainnhe/everforest",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.everforest_enable_italic = true
--     vim.g.everforest_background = "hard"
--     vim.cmd.colorscheme "everforest"
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "kanagawa-wave"
  end,
}
