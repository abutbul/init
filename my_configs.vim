set nocompatible              " be iMproved, required
filetype off                  " required
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>s  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim_runtime/my_plugins/Vundle.vim
call vundle#begin('~/.vim_runtime/my_plugins/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
