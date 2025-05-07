-- set <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open file explorer
vim.keymap.set("n", "<leader>e", ":Oil<CR>")

-- move line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- lsp
vim.keymap.set("n", "<leader>lsr", "<cmd>LspRestart<cr>") -- restar lsp
vim.keymap.set("n", "<leader>lsi", "<cmd>LspInfo<cr>")    -- open lsp info


vim.keymap.set("n", "<space>df", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
