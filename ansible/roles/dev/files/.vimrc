set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set laststatus=2 noshowmode number
set nowrap

call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'

call plug#end()

set t_Co=256
syntax on
colorscheme monokai
let g:airline_theme='base16_bright'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
