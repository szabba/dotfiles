execute pathogen#infect()

set nowrap

set guioptions=mi
colorscheme solarized

syntax on
filetype plugin indent on

map <C-w>t :tab new<CR>

Helptags

let g:indent_guides_enable_on_vim_startup = 1

let g:seek_subst_disable = 1

map <F2> :GundoToggle<CR>

map <F3> :FixWhitespace<CR>:write<CR>
