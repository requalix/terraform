" ============
" Vundle stuff
" ============

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'requalix/detect-indentation'
Bundle 'kchmck/vim-coffee-script'

" ========
" My Stuff
" ========

au BufNewFile,BufRead *.md setf markdown
filetype indent on
syntax on
set bg=light et ts=2 sts=2 sw=2
