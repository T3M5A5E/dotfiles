set t_Co=256
colorscheme desert256
set background=dark
set expandtab
set tabstop=3
set shiftwidth=3

" -----dein setting
if &compatible
	set nocompatible
endif
set runtimepath+=~/.vim/bundle/dein.vim
if dein#load_state('~/.vim/dein_manage')
	call dein#begin('~/.vim/dein_manage')
	call dein#add('~/.vim/bundle/dein.vim')
	call dein#add('tyru/caw.vim')
   call dein#add('mattn/emmet-vim')
   call dein#add('vim-scripts/vim-indent-guides')
	
	call dein#end()
	call dein#save_state()
endif

"dein Scripts END---------

" vim-indent-guides setting
let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:molokai_original = 1
" --- vim-indent-guides END----

" let g:user_emmet_leader_key='<space>' 
filetype plugin indent on
syntax enable

