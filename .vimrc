set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/txt.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set nowrap
set relativenumber
set number
set showcmd
set t_Co=256
set cursorline
set wildmenu
set ruler
set hlsearch
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set clipboard=unnamedplus
set mouse=a
set laststatus=2
set timeoutlen=50
set title
set scrolloff=3
set t_ut= " fixes background problem inside tmux
set backupdir=~/.vim/tmp// 
set directory=~/.vim/swap//

colorscheme badwolf
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_python_checkers = ['pyflakes']

let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#tabline#show_buffers = 0

nnoremap <silent> <CR> :let @/=""<CR><CR>
nnoremap <F5> :w !clear;python %<CR>
nnoremap <F8> :TagbarToggle<CR>


if has('gui_running')
    set guifont=Liberation\ Mono\ for\ Powerline\ 11
endif
