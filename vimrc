set nocompatible

function! OSX()
    return has('macunix')
endfunction

function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction

function! WINDOWS()
    return  (has('win16') || has('win32') || has('win64'))
endfunction

if LINUX()
    source $HOME/.vim/bundles.vim
elseif WINDOWS()
    source $HOME/vimfiles/bundles.vim
endif

"Frankdog's Private Settings
color desert

filetype on
filetype plugin on
filetype indent on

set tags=tags;
set autochdir

set nobackup
set noswapfile

set number
set cursorline

set autoindent
set cindent
set smartindent

set showmatch
set hlsearch
set incsearch
set ignorecase

set expandtab
set tabstop=4
set shiftwidth=4

set virtualedit=block

set guioptions-=T
set guioptions-=m
set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp936,gb18030,gbk,gb2312,ucs-bom,latin-1

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language message zh_CN.utf-8

nmap <leader>ee  :edit $MYVIMRC <CR>
nmap <leader>hex :%!xxd<CR>
nmap <leader>asc :%!xxd -r<CR>
nmap <leader>p   "*p
vmap <leader>y   "*y
nmap <leader>fs :set foldenable<CR> :set foldmethod=syntax<CR>
nmap <leader>fi :set foldenable<CR> :set foldmethod=indent<CR>


"Taglist
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1

"neocomplete
let g:neocomplcache_enable_at_startup = 1

"emmet
"let g:user_emmet_expandabbr_key = '<Tab>'
autocmd FileType css,html imap <tab> <plug>(emmet-expand-abbr)

"ultisnips
let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete


if WINDOWS()
    au GUIEnter * simalt~x
endif

if has('syntax')
    syntax on
endif
