set autoindent
set expandtab
set formatoptions-=tc
set hlsearch
set nocompatible
set nocp
set number
set ruler
set showmatch
set tabpagemax=100
set tabstop=4
syn on

" TODO: group leader key mapping, nmap mapping & alias
" leader key mapping
let mapleader = " "
map <leader>n : tabn<CR>
map <leader>p : tabp<CR>
" nmap
nmap <silent> ./ :nohlsearch<CR>
" alias
ca fp echo expand('%:p')

" auto complete
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {;<CR> {<CR>};<ESC>O
inoremap {<CR> {<CR>}<ESC>O

autocmd BufNewFile,BufRead .virc set filetype=vim
