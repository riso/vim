execute pathogen#infect()
set t_Co=256
syntax enable
set aw
set mouse=a
set ts=4
set sw=4
set ruler
set nu   
set ai
set si
set nowrap
set linebreak
set autoread
set cmdheight=2
set shell=/bin/bash
set hlsearch
set background=dark
colorscheme solarized
set ve=all
set wrap
set bs=2
set autoread

map <F7> mzgg=G`z<CR>
noremap <F3> :Autoformat<CR><CR>

map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

map tt <c-]>

map <c-b> :tprevious<CR>
map <c-n> :tnext<CR>
nmap <F8> :TagbarToggle<CR>
