return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },

		config = function()
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
			vim.keymap.set({ "n", "i" }, "<A-Space>", builtin.buffers, { desc = "Find existing buffers" })
			vim.keymap.set("n", "<leader>fs", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "Search in Open Files" })

			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<c-d>"] = actions.delete_buffer,
							["<A-q>"] = actions.close,
						},
						n = {
							["<c-d>"] = actions.delete_buffer,
							["dd"] = actions.delete_buffer,
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
