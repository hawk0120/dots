vim.cmd("set noshowmode")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("syntax on")
vim.cmd(" let g:netrw_banner=0")

-- Disable swap and backup files
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

vim.opt.mouse = ""
vim.opt.termguicolors = true

require("hawk0120.remap")
require("hawk0120.plugins")

vim.api.nvim_create_autocmd("User", {
	pattern = "PackerComplete",
	callback = function()
		vim.cmd("colorscheme nord")
	end,
})

vim.cmd("colorscheme nord")

require'nvim-treesitter.configs'.setup{highlight={enable=true}}

