" Manju's vimrc

" General Setup {{{

" Initialize Vim for new users
source $VIMRUNTIME/defaults.vim

" Set nocompatible to disable Vi settings
set nocompatible

" Set encoding to UTF-8
set encoding=utf-8

" requirement for vim wiki
filetype plugin on

" }}}

" Vundle Plugins {{{

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-zettle
Plugin 'vimwiki/vimwiki'

call vundle#end()
filetype plugin indent on

" }}}

" User Interface {{{

" Display current cursor position
set ruler

" Display an incomplete command
set showcmd

" Display complete matches in status line 
set wildmenu

" Enable highlighting files in color based on syntax
syntax on

" Enable line wrapping
set wrap

" Set text width to under 80
set textwidth=79

" Show line number and relative line number
set number
set relativenumber

" Show cursor line
set cursorline

" Set colortheme
:colorscheme desert
" }}}

" Search Setup {{{

" Set incremental search
set incsearch

" Search for upper case if required
set smartcase

" }}}

" Editing and Review {{{

" Expand a <Tab> to spaces
set expandtab

" Number of spaces in a <Tab>
set tabstop=4

" Number of spaces used for each step of auto indent
set shiftwidth=4

" Automatically set the indent of a new line
set autoindent

" Do clever indenting (auto)
set smartindent

" Ensure folds are remembered
augroup remember_folds
    au!
    au BufWinLeave * mkview
    au BufWInEnter * silent! loadview
augroup end

" }}}

" Status Line {{{

" Show multiple tabs
set showtabline=1

" Show status line always
set laststatus=2

set statusline=
set statusline+=%#DiffText#   " set color for buffer number
set statusline+=%n              " Buffer number
set statusline+=%#WildMenu#       " Set color for file name
set statusline+=\ %t            " File name of file in buffer
set statusline+=%m\             " Set modified flag 
set statusline+=                " Set empty space
set statusline+=%#StatusLineTerm#
set statusline+=\ %y              " Type of file in buffer ex: [vim]
set statusline+=%=
set statusline+=\ %5l,%-6(%c%V%)\ %p%%\ 
set statusline+=\ %(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}%)

" }}}

" Mappings {{{

" Open new tab
map <C-t> :tab new<CR>

" Move between tabs
map <C-n> :tabn<CR>
map <C-p> :tabp<CR>

" }}}

" Vim-wiki setup {{{

" Map to create HTML of all files
map <leader>wh <Plug>VimwikiAll2HTML

" Map space to za for unfolding
nmap <Space> za

" Setup fold method
let g:vimwiki_folding='syntax'

" Diary command to allow easy access to diary index and auto update
command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end
    
" Keep tags updated
let g:vimwiki_list = [
\{'path': '~/vimwiki/','auto_tags':1}
\]

" }}}
