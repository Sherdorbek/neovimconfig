return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "Day",
					colorscheme = "retrobox",
					after = [[
                    -- All this block will be executed before apply "set colorscheme"
                    vim.opt.background = "light"

                    -- vim.api.nvim_set_hl(0, "Normal",       { bg = "none" })
                    -- vim.api.nvim_set_hl(0, "NonText",      { bg = "none" })
                    -- vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "none" })
                    ]],
				},
				{
					name = "Night",
					colorscheme = "retrobox",
					after = [[
                    -- All this block will be executed before apply "set colorscheme"
                    vim.opt.background = "dark"

                    vim.api.nvim_set_hl(0, "Normal",       { bg = "none" })
                    vim.api.nvim_set_hl(0, "NonText",      { bg = "none" })
                    vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "none" })

                    ]],
				},
			},
		})
		vim.keymap.set("n", "<leader>ts", "<Cmd>Themery<CR>", { desc = "Theme selector" })
	end,
}
