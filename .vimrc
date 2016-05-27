" Pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on   " enable syntax processing

" Copy to system clipboard
nmap <F1> :.w !pbcopy<CR><CR>
vmap <F1> :w !pbcopy<CR><CR>
nmap <F2> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F2> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" Shortcuts
let mapleader=","

" Colors and Highlighting
set background=dark
colorscheme molokai
set t_Co=256

" Spaces and Tabs
set tabstop=2       " number of spaces to show per TAB
set softtabstop=2   " number of spaces to edit per TAB
set shiftwidth=2
set expandtab       " tabs are spaces

" UI
set number      " show line numbers
set showcmd     " show last command in bar
set cursorline  " highlights current line
set wildmenu    " visual autocomplete for commands
set showmatch   " highlight matching [{()}]
set mouse=a

" Search
set incsearch   " instant search
set hlsearch    " highlight matches
" turn off search highlight with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable  " enable folding

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" JSBeautify
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
