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
