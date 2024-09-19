" -------
" GENERAL
" -------
"Set leader key to space
let mapleader = " "

" COPY & PASTE
" Use system clipboard
set clipboard+=unnamedplus
" Use Ctrl+C and Ctrl+V for clipboard operations
vnoremap <C-c> "+y
nnoremap <C-v> "+p

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
Plug 'robertmeta/nofrils'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'machakann/vim-sandwich'
call plug#end()

" ------
" THEMES
" ------
colorscheme nofrils-dark

" ------
" REMAPS
" ------
"nnoremap <C-u> <C-u>zz
"nnoremap <C-d> <C-d>zz

vnoremap <gg> <gg>_
vnoremap G G$
