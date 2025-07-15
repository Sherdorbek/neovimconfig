return {
	-- Namespaces
	{
		"ccaglak/namespace.nvim",
		config = function()
			vim.keymap.set("n", "<leader>la", "<cmd>Php classes<cr>", { desc = "PHP GetClasses", silent = true })
			vim.keymap.set("n", "<leader>lc", "<cmd>Php class<cr>", { desc = "PHP GetClass", silent = true })
			vim.keymap.set("n", "<leader>ln", "<cmd>Php namespace<cr>", { desc = "PHP Namespace", silent = true })
			vim.keymap.set("n", "<leader>ls", "<cmd>Php sort<cr>", { desc = "PHP Sort Classes", silent = true })
		end,
	},
}
