" -------
" GENERAL
" -------

" enable colors in terminal
" set t_Co=256 
set termguicolors

"Set leader key to space
let mapleader = " "

" COPY & PASTE
" Use system clipboard
set clipboard+=unnamedplus

" Store swap in central location
set directory=$HOME/.config/vim/swapfiles//

" LINE NUMBERS
" Hybrid line numbers on in N-mode and off in I-mode
set number
augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
      autocmd BufLeave,FocusLost,InsertEnter,           * if &nu                  | set nornu | endif
augroup END" Toggle line numbers

" Toggle line numbers
nnoremap <F3> :set invnumber invrelativenumber<CR>

" Line wrap disable
set wrap!

" -------
" PLUGINS
" -------
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-vinegar'
Plug 'gosukiwi/vim-smartpairs'
" ------
" THEMES
" ------
Plug 'robertmeta/nofrils'
Plug 'stefanvanburen/rams.vim'
Plug 'aditya-azad/candle-grey'
Plug 'jaredgorski/Mies.vim'
call plug#end()

" Default color
colorscheme mies

" ------
" REMAPS
" ------
"nnoremap <C-u> <C-u>zz
"nnoremap <C-d> <C-d>zz

vnoremap <gg> <gg>_
vnoremap G G$

"inoremap (; (<CR>);<C-c>O
"inoremap (, (<CR>),<C-c>O
"inoremap {; {<CR>};<C-c>O
"inoremap {, {<CR>},<C-c>O
"inoremap [; [<CR>];<C-c>O
"inoremap [, [<CR>],<C-c>O

