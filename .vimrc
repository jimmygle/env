" Import defaults to extend
source $VIMRUNTIME/defaults.vim

" Sets the color scheme
syntax enable
set background=dark
colorscheme solarized

" Adds column for recommended line breaks
set colorcolumn=80 

" Converts tabs to 4 spaces
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" New lines inherit the indentation of previous lines
set autoindent

" Sets screen buffers around cursor (prevents cursor hitting edge of screen)
set scrolloff=4
set sidescrolloff=5

" Shows line numbers
set number

" Disables the annoying bell noise
set noerrorbells
set visualbell

" Enable spell checking
set spell

" Hotkeys for split window resizing
" NOT WORKING
" nmap <M-Right> :vertical resize +1<CR>
" nmap <M-Left> :vertical resize -1<CR>
