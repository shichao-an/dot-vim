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

" syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:loaded_syntastic_html_tidy_checker = 0

" neocomplete
let g:neocomplete#enable_at_startup = 1
set completeopt-=preview

if has('gui_running')
	autocmd VimEnter * NERDTree
endif

" extra settings
set ruler
set modelines=5
set exrc
set backspace=2

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" vim-markdown
let g:vim_markdown_folding_disabled=1
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" remove trailing whitespaces
autocmd BufWritePre *.md :%s/\s\+$//e

" Ignore .png and .jpg in NERDTree
let NERDTreeIgnore=['\.png$','\.jpg']
