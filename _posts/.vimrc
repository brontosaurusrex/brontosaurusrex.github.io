" ignore case when /searching
set ignorecase 
" set number
syntax on
set ruler
set mouse=a

" Search as you type.
set incsearch

" things that clutter git
set nobackup
set noswapfile

" ident
set tabstop=4 shiftwidth=4 expandtab

" f10 to go to end of line (so you have 0 and F10)
nmap <F10> $

" clipboard ? 
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
" ... to obtain clipboard support install the packages vim-gtk or vim-gnome 
set clipboard=unnamedplus
