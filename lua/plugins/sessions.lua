return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			auto_save = true,
			auto_create = false,
			auto_restore = false,
		})
		vim.keymap.set(
			"n",
			"<Leader>ss",
			require("auto-session.session-lens").search_session,
			{ noremap = true, desc = "Session search" }
		)
		vim.keymap.set(
			"n",
			"<Leader>sw",
			"<cmd>SessionSave<CR>",
			{ noremap = true, desc = "Session save by autonaming" }
		)
		vim.keymap.set("n", "<Leader>sc", ":SessionSave ", { noremap = true, desc = "Session save" })
	end,
}
