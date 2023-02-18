-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.g.nvim_tree_respect_buf_cwd = 1

require("nvim-tree").update_focused_file =
	{
		enable = true,
		update_cwd = true,
	}, 
vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")
