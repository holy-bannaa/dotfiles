require("bannaa.keybinds")
require("bannaa.lazy")
require("bannaa.colors")

--netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- indent size
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- something to do with files
vim.cmd('filetype plugin indent on')

-- the very cool nerd font
vim.g.nerd_font = true

-- number line
vim.opt.number = true

-- relative number line
vim.opt.relativenumber = true

-- yank to system clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- break indent
vim.opt.breakindent = true

-- signcolumn on by default
vim.opt.signcolumn = "auto"

-- display whitespace characters using symbols
vim.opt.list = true
vim.opt.listchars = { tab = "> ", trail = "·", nbsp = "␣" }

-- preview substitutions live, as you type! (I got no idea what this does ngl)
vim.opt.inccommand = "split"

-- show which line your cursor is on
-- vim.opt.cursorline = true

-- minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

--highlight search (kinda like <C-f> in a web browser)
vim.opt.hlsearch = true

-- clear the search highlight by pressing <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- highlight when yanking (copying) text
-- see `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- treat .rhai files as rust files
vim.filetype.add({
	extension = {
		rhai = "rust",
	},
})
