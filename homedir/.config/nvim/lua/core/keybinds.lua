local function map(m, k, v)
	vim.keymap.set(m, k, v, {})
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>h", ":nohlsearch<CR>")

map("n", "<leader>-", ":DapToggleBreakpoint<CR>")

map("n", "<leader>a", ":Format<CR>")

map("n", "<leader>?", ":JABSOpen<CR>")

-- Do not copy to clipboard on 'x' press --
map("n", "x", '"_x')
map("n", "X", '"_X')
map("n", "<Del>", '"_x')

-- Paste and Copy to system clipboard --
map("v", '<leader>"', '"+y')
map("n", "<leader>)", '"+yg_')
map("n", '<leader>"', '"+y')
map("n", '<leader>""', '"+yy')

map("n", "<leader>v", '"+p')
map("n", "<leader>V", '"+P')
map("v", "<leader>v", '"+p')
map("v", "<leader>V", '"+P')
