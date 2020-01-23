set nocompatible
syntax on
filetype plugin indent on

set number relativenumber

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set laststatus=2
set showtabline=2

set noshowmode
set showcmd

set matchpairs+=<:>

inoremap jk <esc>
let mapleader=' '

set directory=$HOME/.cache/.vim/swp//
set backupdir=$HOME/.cache/.vim/backup//

" Plugin Configuration
" --------------------

" ale
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['eslint'],
  \   'typescript': ['eslint']
  \}
let g:ale_fix_on_save = 1

" gruvbox - dark theme
colorscheme gruvbox
set background=dark

" tsuquyomi
autocmd filetype typescript nmap <buffer> <leader>e <plug>(TsuquyomiRenameSymbol)
autocmd filetype typescript nmap <buffer> <leader>E <plug>(TsuquyomiRenameSymbolC)
autocmd filetype typescript nmap <buffer> <leader>t :<c-u>echo tsuquyomi#hint()<cr>

