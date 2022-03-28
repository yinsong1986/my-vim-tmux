call plug#begin('~/.vim/plugged')

Plug 'Chiel92/vim-autoformat'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
" Plug 'zxqfl/tabnine-vim'
" https://github.com/tabnine/YouCompleteMe#macos Pls follow the install instruction
Plug 'tabnine/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'pechorin/any-jump.vim'

call plug#end()

set shell=/bin/zsh

" Requirements for vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_toggle=1

" Setting the leader
let mapleader="\<Space>"


" Easier writing/quitting
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>

" set the clipboard
set clipboard=unnamed

" Copy to the system clipboard
vnoremap <Leader>y "+y

" Paste to the system clipboard
vnoremap <Leader>p "+p

" Color
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
syntax enable
colorscheme gruvbox
set background=dark

" Apply formatter on save
au BufWrite * :Autoformat

" Disable fallback to vim's indent file, retabbing and removing trailing whitespace
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" Use better code folding
let g:SimpylFold_docstring_preview = 1

" Use black formatter
let g:formatters_python=['black']

" Vim pane switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Hybrid line numbers
" :set number relativenumber
:set number 


" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END

" Searching within a file
set hlsearch
set incsearch

" Change cursor shape in different modes
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Nerdtree open/close toggle
map <C-n> :NERDTreeToggle<CR>

" Additional vim options
set encoding=utf-8
set ruler
set viminfo='20,<1000 " inc copy/paste-buffer
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab " Convert from tab char to spaces
set noerrorbells
set visualbell
set t_vb=
set smarttab
set nowrap
set colorcolumn=88
set cursorline
set spell

" Controls which file types YouCompleteMe should be turned off.
let g:ycm_filetype_blacklist = {} 
