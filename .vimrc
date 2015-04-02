set sw=4
set ts=4
execute pathogen#infect()
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:EasyMotion_leader_key = '<Leader>' 
let NERDTreeIgnore = ['\.pyc$']
set nocompatible
filetype plugin indent on
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
set number
let Tlist_WinWidth = 40
set gfn=Monaco:h14
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:neocomplete#enable_at_startup = 1
let g:loaded_syntastic_html_tidy_checker = 0
if has('gui_running')
	autocmd VimEnter * NERDTree
endif
set ruler
set modelines=5
set exrc
