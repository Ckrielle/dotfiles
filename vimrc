"
" Author: Machina
"
"
"
"

let mapleader=" "


" Establishes XDG Directory Specifications
set directory=$XDG_CACHE_HOME/vim,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"

" Set-Up Plugin Manager VundleVim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install+Configuring VimTex, a Vim plugin for LaTeX files
Plugin 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'general'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
let g:livepreview_previewer = 'zathura'

" Distraction-free writing in Vim.
Plugin 'junegunn/goyo.vim'

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

" Basics
set number 										" Set numbers
set wildmode=longest,list,full								" Enable autocompletion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o		" Disables automatic newline comments
set splitbelow splitright								" Splits open at bottom and right
syntax on										" Enables colors

" Set keybinds
map <leader>f :Goyo \| set linebreak<CR>		
map <leader>o :setlocal spell! spelllang=en_us<CR>
map <leader>c :w! \| !compiler <c-r>%<CR><CR>
map <leader>p :!opout <c-r>%<CR><CR>
:noremap <leader>u :w<Home>silent <End> !urlscan<CR>
:noremap ,, :w<Home>silent <End> !urlscan<CR>

" Automatic commands
" autocmd BufWritePre * %s\s\+$//e
