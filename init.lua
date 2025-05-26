require "core.options"
require "core.keymaps"

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  require "plugins.neotree",
  require "plugins.colorscheme",
  require "plugins.lualine",
  require "plugins.treesitter",
  require "plugins.telescope",
  require "plugins.lsp-config",
  require "plugins.blink-cmp",
  require "plugins.gitsigns",
  require "plugins.none-ls",
  require "plugins.trouble",
  require "plugins.render-markdown",
  require "plugins.nvim-dap",
  require "plugins.kulala",
  require "plugins.copilot",
  require "plugins.codecompanion",
}
