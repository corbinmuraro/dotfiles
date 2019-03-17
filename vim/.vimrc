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
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'

" prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" git
Plug 'airblade/vim-gitgutter'

" theme
Plug 'w0ng/vim-hybrid'

call plug#end()

""""""""""""""""""""""""""""
" settings
""""""""""""""""""""""""""""
colorscheme hybrid	" theme
set autoindent		" use indentation of previous line
set background=dark	" theme
set colorcolumn=81	" highlight lines longer than 80 chars
set hidden		" alllow hiding unsaved buffers
set hlsearch		" highlight the search query
set number		" show line numbers
set showcmd		" show commands in the last line
set smartcase		" only use case sensitive search when uppercase
