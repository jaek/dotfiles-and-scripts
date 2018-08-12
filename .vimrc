set nocompatible              " be iMproved, required
filetype off                  " required
set background=dark
" margin at 80 px
set cc=80
set guifont=Source\ Code\ Pro\ Semi-Bold\ 12
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" ColourSchemes:
Plugin 'sts10/vim-pink-moon'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" C# support
Bundle 'OmniSharp/omnisharp-vim'
" Statusline
Plugin 'itchyny/lightline.vim'
" NerdTree
Plugin 'scrooloose/nerdtree'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" required for statusline
set laststatus=2
colorscheme industry 
" keybindings ----
" map 'enter enter' to insert newline
nmap <CR><CR> o<ESC>
" wrapping settings for markdown
au BufRead,BufNewFile *.md setlocal textwidth=80 wrapmargin=1

