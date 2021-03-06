" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []

" disable Tagbar if vim is too old
if (v:version < 700) || (v:version == 700 && !has('patch167'))
    call add(g:pathogen_disabled, 'tagbar')
endif

" disable Autoformat and airline if vim is too old
if (v:version < 703)
    call add(g:pathogen_disabled, 'vim-airline')
    call add(g:pathogen_disabled, 'vim-autoformat')
endif

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
let base16colorspace=256
" colorscheme base16-tomorrow-night
" colorscheme solarized
set ve=all
set wrap
set bs=2
set autoread
set ignorecase
set smartcase
set rtp+=/usr/local/opt/fzf

map <F7> mzgg=G`z<CR>
call togglebg#map("<F5>")
noremap <F3> :Autoformat<CR><CR>

map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

"" push current line up or down
nnoremap <C-S-Up> ddkP
nnoremap <C-S-Down> ddp
nnoremap <C-S-Right> dawwPb
nnoremap <C-S-Left> dawbPb

map tt <c-]>

map <c-b> :tprevious<CR>
map <c-n> :tnext<CR>
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" use fzf over ctrlp
nnoremap <C-p> :Files<Cr>
nnoremap <C-S-f> :Ag 

" Indent XML
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

let NERDTreeShowHidden = 1


autocmd VimResized * wincmd =
