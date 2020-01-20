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

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_dirhistmax=0

" Plugin Configuration
" --------------------

" ale
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['eslint'],
  \   'typescript': ['eslint']
  \}

" gruvbox - dark theme
colorscheme gruvbox 
set background=dark

" tsuquyomi
autocmd filetype typescript nmap <buffer> <leader>e <plug>(TsuquyomiRenameSymbol)
autocmd filetype typescript nmap <buffer> <leader>E <plug>(TsuquyomiRenameSymbolC)
autocmd filetype typescript nmap <buffer> <leader>t :<c-u>echo tsuquyomi#hint()<cr>

" vim-flagship - add extensions
function! AleStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? 'OK' : printf('%dW %dE', all_non_errors, all_errors)
endfunction
autocmd User Flags call Hoist("window", "%{AleStatus()}")
