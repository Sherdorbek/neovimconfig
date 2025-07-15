return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- Specific for languages
			-- lspconfig.lua_ls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.intelephense.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.ts_ls.setup({
			-- 	capabilities = capabilities,
			-- })
			---@diagnostic disable-next-line: lowercase-global
			function hover_with_constraints()
				vim.lsp.buf.hover({
					border = "rounded",
					max_width = 50,
					max_height = 40,
				})
			end

			vim.keymap.set("n", "K", hover_with_constraints, { desc = "LSP Hover info" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })
			vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "LSP Diagnostic" })
		end,
	},
	--{
	--	"VonHeikemen/lsp-zero.nvim",
	--	branch = "v3.x",
	--	config = function()
	--		local lsp_zero = require("lsp-zero")

	--		lsp_zero.on_attach(function(client, bufnr)
	--			-- see :help lsp-zero-keybindings
	--			-- to learn the available actions
	--			lsp_zero.default_keymaps({ buffer = bufnr })
	--		end)

	--		-- here you can setup the language servers
	--	end,
	--},
}
