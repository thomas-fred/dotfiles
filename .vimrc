set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" colours
syntax on
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set termguicolors
set background=dark

" whitespace
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" highlight trailing whitespace in red
hi ExtraWhitespace ctermbg=darkred
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/

" highlight tabs in yellow
hi Tabs ctermbg=yellow
call matchadd('Tabs', '\t')
au BufWinEnter * call matchadd('Tabs', '\t')
if version >= 702
  au BufWinLeave * call clearmatches()
endif

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" highlight line 80 in red
set cc=80
hi ColorColumn ctermbg=darkred

" searching
set showmatch
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" code folding
set foldmethod=indent
set foldnestmax=1

" misc
set clipboard=unnamedplus
set showcmd
set wildmenu
set number
set lazyredraw
set statusline+=\ %f
set tabpagemax=50
