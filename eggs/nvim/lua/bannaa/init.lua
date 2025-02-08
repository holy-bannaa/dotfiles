require("bannaa.remaps")
require("bannaa.lazy")

vim.cmd.colorscheme("gruvbox")

--the very cool nerd font
vim.g.nerd_font = true

--number line
vim.opt.number = true

--enable relative number line
vim.opt.relativenumber = true

--yank to system clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.opt.breakindent = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "auto"

--display whitespace characters using symbols
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type! (I got no idea what this does ngl)
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

--highlight search (kinda like <C-f> in a web browser)
vim.opt.hlsearch = true

--clear hlsearch by pressing <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
