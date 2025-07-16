local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
local opts = {}
require("vim-options")
require("lazy").setup("plugins")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set({ "i", "n" }, "<C-s>", "<ESC>:w<CR>")

-- Set highlight after Themery loads the colorscheme

-- Customize colors
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#888888" }) -- grey for relative
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFD700", bold = true })
-- Set highlight for current line number (in relative number mode)

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- or '»', '●', '■'
		spacing = 2,
		source = false, -- show source name
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
