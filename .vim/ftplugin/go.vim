set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

autocmd Filetype go autocmd BufWritePre <buffer> Fmt
map <F3> :Fmt<CR>:w<CR>
