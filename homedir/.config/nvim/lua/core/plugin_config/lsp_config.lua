require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "bashls", "pylsp" },
})

local on_attach = function(_, _)
	vim.keymap.set("n", ",e", vim.lsp.buf.definition, {})
	vim.keymap.set("n", ",d", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "<leader>u?", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>jc", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", ",u", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "T", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").bashls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").pylsp.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
