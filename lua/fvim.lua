vim.cmd [[
if exists('g:fvim_loaded')

		" Настройка шрифтов
    if g:fvim_os == 'windows' || g:fvim_render_scale > 1.0
      "set guifont=JetBrainsMono\ NF:h15
      set guifont=Liga\ SFMono\ Nerd\ Font:h15
    else
      set guifont=JetBrainsMono\ NF:h30
    endif

    " Анимации в FVim
		FVimCursorSmoothMove v:true
endif
]]
