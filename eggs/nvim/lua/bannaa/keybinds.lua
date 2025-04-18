-- set <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open file explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>")

-- move line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- lsp
vim.keymap.set("n", "<leader>lsr", "<cmd>LspRestart<cr>") -- restar lsp
vim.keymap.set("n", "<leader>lsi", "<cmd>LspInfo<cr>") -- open lsp info

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

