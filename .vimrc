set sw=4
set ts=4
execute pathogen#infect()
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:EasyMotion_leader_key = '<Leader>'
set nocompatible
filetype plugin indent on
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
set number
let Tlist_WinWidth = 40
set gfn=Monaco:h17

" disable folding
set nofoldenable

" syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_c_checkers = ['gcc-5']
let g:syntastic_tex_checkers = ['chktex']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_puppet_checkers = ['puppetlint']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_scala_checkers = ['scalastyle']
let g:loaded_syntastic_html_tidy_checker = 0
let g:syntastic_scala_scalastyle_jar = '/usr/local/Cellar/scalastyle/0.8.0/libexec/scalastyle_2.11-0.8.0-batch.jar'
let g:syntastic_scala_scalastyle_config_file = '/usr/local/etc/scalastyle_config.xml'

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

" vim-markdown
let g:vim_markdown_folding_disabled=1
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Ignore .png and .jpg in NERDTree
let NERDTreeIgnore=['\.pyc$','\.png$','\.jpg$', '\.swp$', '\.DS_Store$']

set formatoptions+=w

" Twiddle case
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_by_filename = 1

" Highlighting search matches
:set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
