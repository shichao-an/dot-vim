set sw=4
set ts=4
set paste
execute pathogen#infect()
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:EasyMotion_leader_key = '<Leader>' 
let NERDTreeIgnore = ['\.pyc$']
filetype plugin indent on
let Tlist_Ctags_Cmd = '/Users/shichao/Documents/Programs/bin/bin/ctags'
let Tlist_Use_Right_Window = 1
set number
let Tlist_WinWidth = 40
set gfn=Monaco:h14
autocmd BufWritePost *.py call Flake8()
