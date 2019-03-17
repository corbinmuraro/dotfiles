set nocompatible

" install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


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
set colorcolumn=81	" highlight lines longer than 80 chars 
