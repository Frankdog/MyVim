set nocompatible               " be iMproved
filetype off                   " required!

" 此处规定Vundle的路径  
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
"taglist 
"------------------
Bundle "vim-scripts/taglist.vim"

"------------------
"a vim 
"------------------
Bundle "vim-scripts/a.vim"

"------------------
"lookupfile vim 
"------------------
Bundle "vim-scripts/genutils"
Bundle "vim-scripts/lookupfile"

"------------------
"drawit vim 
"------------------
Bundle "vim-scripts/drawit"

"------------------
"
"delimitMate vim 
"------------------
Bundle "Raimondi/delimitMate"

"------------------
"powerline vim 
"------------------
Bundle "Lokaltog/vim-powerline"

"------------------
"syntastic vim 
"------------------
Bundle "scrooloose/syntastic"

"------------------
"solarized vim 
"------------------
Bundle "altercation/vim-colors-solarized"

"------------------
"neocomplete vim 
"------------------
Bundle "Shougo/neocomplcache.vim"

"------------------
"snipmate 
"------------------
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Optional:
Bundle "honza/vim-snippets"

"------------------
"emmet
"------------------
Bundle "mattn/emmet-vim"

filetype plugin indent on     " required!
