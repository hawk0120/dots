vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
				use 'wbthomason/packer.nvim'

				use {
								'nvim-telescope/telescope.nvim', tag = '0.1.8',
								requires = { {'nvim-lua/plenary.nvim'} }
				}
				use {
								'ThePrimeagen/harpoon'
				}

			use {'letieu/btw.nvim'}
				use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
				use {
								'nvim-treesitter/nvim-treesitter',
								run = ':TSUpdate'
				}

				use {
								"stevearc/conform.nvim",
								config = function()
												require("conform").setup()
								end
				}


				use ('wakatime/vim-wakatime')

				use { 'mbbill/undotree'}	
				use {'neoclide/coc.nvim', tag = 'master', run = 'npm ci'}
				use {
								'ThePrimeagen/99',
								config = function()
												local _99 = require("99")
												local cwd = vim.uv.cwd()
												local basename = vim.fs.basename(cwd)
												_99.setup({
																logger = {
																				level = _99.DEBUG,
																				path = "/tmp/" .. basename .. ".99.debug",
																				print_on_error = true,
																},
												})
												vim.keymap.set("v", "<leader>9v", function()
																_99.visual()
												end)
												vim.keymap.set("n", "<leader>9x", function()
																_99.stop_all_requests()
												end)
												vim.keymap.set("n", "<leader>9s", function()
																_99.search()
												end)
								end
				}

				use 'nvim-lualine/lualine.nvim'
				use 'shaunsingh/nord.nvim'
				use {'Lommix/ollamachad.nvim', requires = {'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim'}}
				use {'folke/zen-mode.nvim'}
				use {'iamcco/markdown-preview.nvim', run = 'cd app && npx --yes yarn install' }
				use {"hmunye/llama.nvim"}
end)


