vim.cmd("set noshowmode")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("syntax on")
vim.cmd(" let g:netrw_banner=0")
vim.cmd("set textwidth=80")

vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

vim.opt.mouse = ""
vim.opt.termguicolors = true

require("hawk0120.remap")
require("hawk0120.plugins")

vim.cmd("colorscheme nord")

require'nvim-treesitter.configs'.setup{highlight={enable=true}}

require("ollamachad.init").setup({})

vim.defer_fn(function()
    local chat = require("ollamachad.chat"):new()
    vim.api.nvim_create_user_command("OLLAMA", function()
        chat:toggle()
    end, {})
end, 1000)
