return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<c-\>]],
			on_create = function(t) end,
			on_open = function(t) end,
			on_close = function(t) end,
			on_stdout = function(t, job, data, name) end,
			on_stderr = function(t, job, data, name) end,
			on_exit = function(t, job, exit_code, name) end,
			hide_numbers = false,
			shade_filetypes = {},
			autochdir = true,
			highlights = {},
			shade_terminals = true,
			shading_factor = "-30",
			shading_ratio = "-3",
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			persist_mode = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			auto_scroll = true,
			float_opts = {
				border = "curved",
				width = 200,
				height = 40,
				row = 5,
				col = 30,
				winblend = 3,
				zindex = 50,
				title_pos = "center",
			},
			winbar = {
				enabled = false,
				name_formatter = function(term)
					return term.name
				end,
			},
		})

    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua_lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}
