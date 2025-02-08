vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", ":Explore<CR>")

vim.filetype.add({
	extension = {
		rhai = "rust",
	},
})
