-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		sh = {
			function()
				return {
					exe = "shfmt",
					args = { "-i", 4, "-ci", "-bn" },
					stdin = true,
				}
			end,
		},
		cpp = {
			function()
				return {
					exe = "clang-format",
					args = {
						"-assume-filename",
						util.escape_path(util.get_current_buffer_file_name()),
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},
		python = {
			function()
				return {
					exe = "autopep8",
					args = { "-" },
					stdin = 1,
				}
			end,
		},
		c = {
			function()
				return {
					exe = "clang-format",
					args = {
						"-assume-filename",
						util.escape_path(util.get_current_buffer_file_name()),
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		json = {
			require("formatter.filetypes.json").prettierd,
		},
		html = {
			require("formatter.filetypes.html").prettierd,
		},
		css = {
			require("formatter.filetypes.css").prettierd,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},
})
