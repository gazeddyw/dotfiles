set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" plugin not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put non-Plugin stuff after this line

colorscheme jellybeans

set cursorline			" Highlight cursor line
set encoding=utf-8		" 
set noequalalways		" 
set foldlevel=20		" 
set foldmethod=syntax		" 
set guicursor=a:blinkon0	" Turn off blinking cursor
set laststatus=2		" always show status line
set number 			" set line numbers
set ruler			" 
set scrolljump=3		" 
set scrolloff=5			" 
set sidescrolloff=5		" 
set showtabline=2		" always show tab line
set smartindent			" Auto indenting
set wrap!			" Turn line wrap off

if exists('+colorcolumn')
  hi ColorColumn ctermbg=235 guibg=#A52A2A
  set colorcolumn=80
endif

" GUI Settings
set guifont=Ubuntu\ Mono\ 11


filetype plugin on
set ofu=syntaxcomplete#Complete

" Strip trailing whitespace from these filetypes on write (:w)
autocmd FileType asm,c,cpp,java,php,perl,python,sh,ruby autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespace()

" Functions
function! <SID>StripTrailingWhitespace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

