source $VIMRUNTIME/vimrc_example.vim

" Colour scheme
if &term == "foot"
    " Set options per `:help xterm-true-color` (via `:help 'termguicolors'`)
    set t_8b=[48:2:%lu:%lu:%lum
    set t_8f=[38:2:%lu:%lu:%lum
    set termguicolors
    colorscheme gruvbox
else
    colorscheme desert " desert, habamax, or pablo preferred
endif
set background=dark
"hi Normal ctermbg=234

" Indentation
" Use spaces for indentation (option 2 of `:help 'tabstop'`).
set expandtab
set shiftwidth=0 " 0 means use the same value as 'tabstop'
set tabstop=4
" Use spaces for indentation, but keep tabstops at 8 columns. Use
" CTRL-T/CTRL-D for indentation in insert mode and >>/<< in normal mode (from
" `:help usr_30.txt'`).
"set expandtab
"set shiftwidth=4

" Miscellaneous
set belloff=all " Only applies to the VT
"set cursorcolumn
set cursorline
"set nohlsearch
set nojoinspaces " Two spaces after a sentence
"set number
set relativenumber " Relative line numbering in the leftmost columns
set scrolloff& " Padding between the cursor and the bottom/top of the window
"set title

"let g:slimv_swank_cmd = '!foot sbcl --load ~/.vim/pack/kovisoft/start/slimv/slime/start-swank.lisp &'
let g:paredit_mode = 0
let g:slimv_swank_cmd = '!foot sbcl --load /usr/share/common-lisp/source/swank/start-swank.lisp &'
