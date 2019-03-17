set nocompatible

""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" plugins for specific languages
Plug 'sophacles/vim-processing'
Plug 'pangloss/vim-javascript'

" prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" theme
Plug 'w0ng/vim-hybrid'

call plug#end()

""""""""""""""""""""""""""""
" settings
""""""""""""""""""""""""""""
set background=dark	" theme
colorscheme hybrid	" theme
set number		" show line numbers
set hlsearch		" highlight the search query

