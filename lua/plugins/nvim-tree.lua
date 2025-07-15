return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
		vim.keymap.set("n", "<leader>a", "<Cmd>NvimTreeFocus<CR>", { desc = "Nvim tree" })
		vim.keymap.set("n", "<A-q>", "<Cmd>NvimTreeClose<CR>", { desc = "Nvim tree close" })
	end,
}

-- return {
-- 	"nvim-neo-tree/neo-tree.nvim",
-- 	branch = "v3.x",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"nvim-tree/nvim-web-devicons",
-- 		"MunifTanjim/nui.nvim",
-- 	},
-- 	config = function()
-- 		require("neo-tree").setup({
-- 			source_selector = {
-- 				winbar = true,
-- 				statusline = true,
-- 			},
-- 			window = {
-- 				position = "float",
-- 				popup = { -- settings that apply to float position only
-- 					size = { height = "27", width = "55" },
-- 					position = "50%", -- 50% means center it
-- 				},
-- 			},
-- 		})
-- 		vim.keymap.set("n", "<leader>e", ":Neotree float focus<CR>", { desc = "Neo-tree dir files" })
-- 		vim.keymap.set("n", "<leader>w", ":Neotree float buffers<CR>", { desc = "Neo-tree buffers" })
-- 	end,
-- }
