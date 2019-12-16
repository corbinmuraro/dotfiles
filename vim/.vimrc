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
Plug 'leafgarland/typescript-vim'
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'
Plug 'davidhalter/jedi-vim'

" prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" git
Plug 'airblade/vim-gitgutter'

" autocomplete
Plug 'lifepillar/vim-mucomplete'

" theme
Plug 'w0ng/vim-hybrid'

call plug#end()


""""""""""""""""""""""""""""
" settings
""""""""""""""""""""""""""""

" theme
colorscheme hybrid
set background=dark

" interface
set number		      " show line numbers
set colorcolumn=81
set showcmd		      " show commands in the last line
set hidden		      " alllow hiding unsaved buffers

" backspace
set backspace=2     " backspace over everything in insert mode

" search
set hlsearch		    " highlight the search query
set smartcase		    " only use case sensitive search when uppercase

" tabs
set autoindent      " use indentation of previous line
set expandtab		    " tabs are spaces
set tabstop=2		    " tab size when pressing tab
set shiftwidth=2	  " tab size when indenting

" autocomplete
set completeopt=menuone,noinsert



