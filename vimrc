set nocompatible
syntax on
filetype plugin indent on

set number relativenumber

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set laststatus=2

set noshowmode
set showcmd

set matchpairs+=<:>

inoremap jk <esc>
let mapleader=' '

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

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

" lightline - custom sections
let g:lightline = {
  \   'colorscheme': 'wombat',
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head'
  \   },
  \ }

" tsuquyomi
autocmd filetype typescript nmap <buffer> <leader>t :<c-u>echo tsuquyomi#hint()<cr>
