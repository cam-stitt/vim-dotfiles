" pathogen
execute pathogen#infect()

let s:uname = substitute(system("uname"), '\n', '', '')

" appearance
syntax on
set background=light

if has('gui_running')
	if s:uname == "Darwin"
		set guifont=Hack-Regular:h14
	else
		set guifont=Hack\ 12
	endif
	set guioptions-=T " no toolbar
	colorscheme solarized
endif

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#eee8d5
set cursorline

set number
set autoindent

filetype plugin indent on

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" swp directory
:set directory=~/.vim/swapfiles//

" backup directory
:set backupdir=~/.vim/backups//

" airline
let g:airline_theme='solarized'

" javascript
let g:javascript_plugin_jsdoc = 1

" go
let g:go_fmt_command = "goimports"

" youcompleteme
let g:ycm_autoclose_preview_window_after_completion = 1

if s:uname == "Darwin"
	let g:ycm_use_clangd = 0
else
	let g:ycm_use_clangd = 1
	" Let clangd fully control code completion
	let g:ycm_clangd_uses_ycmd_caching = 0
	" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
	let g:ycm_clangd_binary_path = exepath("clangd")
endif
