-- Конфигурация цветовой схемы
vim.opt.syntax = 'enable'
vim.opt.background = 'dark'
-- vim.cmd('colorscheme gruvbox-material')

-- Кодировка
vim.opt.encoding = 'utf-8'

-- Подчёркиваем линию, на которой находится курсор
vim.opt.cursorline = true

-- Высота статуса
vim.opt.cmdheight = 1

vim.opt.list = false
vim.opt.listchars = [[tab:¦\ ,space:·,precedes:«,extends:»]]

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false
vim.opt.copyindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.cursorline = true

-- Переключение между буфферами без сохранения
vim.o.hidden = true

-- Вложенность
vim.opt.foldmethod = 'marker'
vim.opt.foldlevel = 99

-- Перерисовка терминала
vim.opt.ttyfast = true
vim.opt.lazyredraw = true

-- Фикс для скролла (количество строк, если мы упираемся в край экрана, которое будет висеть)
vim.opt.scrolloff = 5

-- Правильное разделение окон
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Избавляемся от бэкапов
vim.opt.backup = false
vim.opt.swapfile = false

-- Используется системный буфер обмена
vim.opt.clipboard = 'unnamedplus'

-- Не добавляем новую линию в конце
vim.opt.fixendofline = false

-- Говорим Neovim, чтобы он нам помогал завершать фразы (автодополнение)
vim.opt.completeopt = { 'menuone', 'noinsert' }

-- Отключаем автовыполнение, нужно для Packer
vim.g.autocmd = false

-- Данная строка нужна для того, чтобы (Neo)Vim разделял код по вложенности и маркерам '{{{' и '}}}'
-- vim:ts=2:ai:foldmethod=marker:foldlevel=0:
