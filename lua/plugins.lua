-- Инициализируем Packer
return require('packer').startup(function(use)

	-- Packer будет обновлять сам себя
	use {
		'wbthomason/packer.nvim',
	}

	-- Универсальное меню для поиска
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Темы
	use {
		'ful1e5/onedark.nvim',
		config = function()
			vim.cmd[[
				if exists('g:fvim_loaded')
					colorscheme onedark
				endif
			]]
		end
	}

	-- Комментарии
	use {
		'b3nj5m1n/kommentary',
		config = function()
			require('config/kommentary')
		end
	}

	-- Проводник для Neovim
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function()
			require('nvim-tree').setup {}
		end
	}

	-- Конфигурация для LSP
	use {
		'neovim/nvim-lspconfig',
	}

	-- Сниппеты
	use {
		'hrsh7th/cmp-vsnip',
		requires = {{'hrsh7th/vim-vsnip'}}
	}

	-- Иконки
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('config/lspkind')
		end,
	}

	-- Плагин для автодополнения
	use {
		'hrsh7th/nvim-cmp',
		requires = {{
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path'
		}},
		config = function()
			require('config/cmp')
		end
	}

	-- Хинты
	use {
		'ray-x/lsp_signature.nvim',
		config = function()
			require('lsp_signature').setup()
		end,
	}

	-- Плагин для установки LS
	use {
		'williamboman/nvim-lsp-installer',

		-- Конфигурация для того, чтобы устанавливать сервера
		config = function()
			require('config/nvim-lsp-installer')
		end
	}

	-- Дерево методов
	use {
		'stevearc/aerial.nvim',
		config = function()
			require('config/aerial')
		end
	}

	-- Диагностика
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

	-- Статус-бар
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('config/lualine') 
		end
	}

	-- Табы
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- Автодополнение скобок
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('config/autopairs')
		end
	}
end)
