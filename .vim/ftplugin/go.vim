set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

autocmd Filetype go map <buffer> <F3> :Fmt<CR>:w<CR>
