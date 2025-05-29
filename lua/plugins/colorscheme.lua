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

return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "kanagawa-wave"
  end,
}
