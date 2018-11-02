set encoding=utf-8
set nocompatible              " required
filetype off                  " required

" check repos file and get vundle first
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" intelligent text folding
Plugin 'tmhedberg/SimpylFold'
" persistent indentation
Plugin 'vim-scripts/indentpython.vim'
" nice autocompletion - when works 
Bundle 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" define where splits open (sp. and vs. autocomplete)
set splitbelow
set splitright
"split navigations (use ctrl+h/l/j/k)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding with space
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
" Configure simply fold
let g:SimpylFold_docstring_preview=1
" Configure proper python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" Configure whitespace illumination
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" Configure proper webdev indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Configure YCM Sane The first line ensures that the auto-complete window goes
" away when you’re done with it, and the second defines a shortcut for goto
" definition. space-g will goto definition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

