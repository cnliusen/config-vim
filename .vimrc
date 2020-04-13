
""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'             " Better fold
Plugin 'vim-scripts/indentpython.vim'     " Better indentation for python
Plugin 'jnurmine/Zenburn'                 " Color Scheme
Plugin 'altercation/vim-colors-solarized' " Color Scheme
Plugin 'vim-syntastic/syntastic'          " Syntax Checking
Plugin 'nvie/vim-flake8'                  " PEP8 Syntax Checking
Plugin 'kien/ctrlp.vim'			  " Super Searching
Plugin 'tpope/vim-fugitive'	          " Git
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'

if has('gui_running')
  Bundle 'Valloric/YouCompleteMe'
endif


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ; :
vnoremap ; :
inoremap jk <ESC>

if has('gui_running')
  set guifont=Input\ Mono:h12
  let g:airline_powerline_fonts=1
endif

set encoding=utf-8
let g:Powerline_symbols='unicode'

" Nerd Tree
nmap <C-n> :NERDTreeToggle<CR>

" MaxOS clipboard
set clipboard=unnamed

" line numbering
set nu

" highlight
let python_highlight_all=1
syntax on

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

"""""""""""""""""""""""""""""""""""""""""""""""
" Split
"""""""""""""""""""""""""""""""""""""""""""""""
" set splitbelow
" set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding
set foldmethod=indent
set foldlevel=99

" SimpyFold
let g:SimpylFold_docstring_preview=1

nnoremap <space> za

"""""""""""""""""""""""""""""""""""""""""""""""
" au
"""""""""""""""""""""""""""""""""""""""""""""""
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme
"""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
