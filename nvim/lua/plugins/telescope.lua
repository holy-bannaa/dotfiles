return{
	"nvim-telescope/telescope.nvim",

	dependencies = {

		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-telescope/telescope-ui-select.nvim"

	},


	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })

		-- This is your opts table
		require("telescope").setup {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {
						-- even more opts
					}
				}
			},

			pickers = {
				find_files = {
					hidden = true
				}
			}
		}

		require("telescope").load_extension("ui-select")
	end

}