require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "vim", "help", "rust", "python", "toml" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
