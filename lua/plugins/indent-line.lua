return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	config = function()
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#606060" })
		end)

		require("ibl").setup({
			indent = {
				char = "┊",
				highlight = "RainbowRed",
			},
		})
	end,
}
