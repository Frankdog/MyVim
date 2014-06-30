source $VIM/bundles.vim 
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


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

set expandtab
set tabstop=4
set shiftwidth=4

set virtualedit=block

set guioptions-=T
set guioptions-=m
set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI

nmap <leader>ee  :edit $MYVIMRC <CR>
nmap <leader>hex :%!xxd<CR>
nmap <leader>asc :%!xxd -r<CR>
nmap <leader>p   "*p
vmap <leader>y   "*y
nmap <leader>fs :set foldenable<CR> :set foldmethod=syntax<CR>
nmap <leader>fi :set foldenable<CR> :set foldmethod=indent<CR>


au GUIEnter * simalt~x

"Taglist
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Auto_Open = 1

"neocomplete
let g:neocomplcache_enable_at_startup = 1

"emmet
 let g:user_emmet_leader_key = '<c-y>'
