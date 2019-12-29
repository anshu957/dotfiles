set nu
set encoding=utf-8



"---------------------- Vundle Section ---------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'

Bundle 'Valloric/YouCompleteMe'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"----------code folding ------------------------------------------------

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_docstring_preview=1


" Enable folding with the spacebar
nnoremap <space> za

"--------------- YouCompleteMe customizations ----------------------
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"---Make code pretty again ---------------------------------------------------
let python_highlight_all=1
syntax on

colors zenburn


"------------ Start with the last cursor position------------------------
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
