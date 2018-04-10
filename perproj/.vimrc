autocmd VimEnter * NERDTreeClose
let g:nerdtree_tabs_open_on_gui_startup = 0
if has('gui_running')
  autocmd VimEnter * if argc() == 0 | NERDTree | endif
endif
