"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins (managed by Vundle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               
filetype off                 

if has("win32") || has("win16")
  set rtp+=~/vimfiles/bundle/Vundle.vim/
  let path='~/vimfiles/bundle'
  call vundle#begin(path)
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

" let Vundle manage Vundle
Bundle 'gmarik/vundle' 
" colorscheme
Bundle 'tomasr/molokai'
" status/tab line 
Bundle 'bling/vim-airline'
" file explorer
Bundle 'scrooloose/nerdtree'
" syntax checker 
Bundle 'scrooloose/syntastic'
" csv editor 
Bundle 'chrisbra/csv.vim'
" surrend stuff with symbols
Bundle 'tpope/vim-surround.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible             " disable vi compatibility
set history=1000             " increase lines of history
set autoread                 " automatically read file changes
au FocusLost * silent! wa    " auto save files when focus lost
set encoding=utf-8           " always write utf-8
set hidden                   " hide buffer instead of closing

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors, Syntax Highlighting, Fonts, ...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                  " detect filetypes
syntax enable                " enable syntax highlighting 
set synmaxcol=512            " no syntax coloring for very long lines
colorscheme molokai          " set colorscheme 
" set the font
if has('gui_running')        
  if has("win32") || has("win16")
    set guifont=DejaVu_Sans_Mono:h11:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ 11
  endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent               " auto-indent
set tabstop=4                " tab spacing 4 spaces
set softtabstop=4            " consistent tab behaviour
set shiftwidth=4             " indent/outdent by 4 spaces
set shiftround               " indent/outdent to the nearest tabstop
set expandtab                " use spaces instead of tabs
set nowrap                   " do not auto wrap lines 
filetype plugin indent on    " filetype dependent indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","            " set leader key
let g:mapleader=","
inoremap <C-F7> <Esc>        " map F7 to Esc (extra key on keyboard)
map <c-j> <c-w>j             " switching between tabs
map <c-k> <c-w>k             " ...
map <c-l> <c-w>l             " ...
map <c-h> <c-w>h             " ...
ino jj <esc>                 " remap jj to <Esc>
cno jj <c-c>                 " ...
vno v <esc>                  " use v in visual mode to switch off
nmap <leader>nt :NERDTree<cr> " run nerd tree
nnoremap <leader>c :w<cr>:SyntasticCheck<cr>    
noremap <C-S> :update<CR>    " save with CTRL+S
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation / Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=2              " allow backspacing over insert etc. 
set scrolloff=7              " keep cursor 7 lines from the top/bottom
set wrapscan                 " set the search scan to wrap lines
set ignorecase               " ignore case when searching
set smartcase                " smart case when searching
set hlsearch                 " highlight search results
set incsearch                " highlight as you search

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber           " show relative line numbers ...
set number                   " ... but absolute for current line 
set ch=2                     " make command line two lines high
set laststatus=2             " always put a status line in
set showmode                 " show current mode
set guioptions-=m            " remove menu bar
set guioptions-=T            " remove toolbar
set guioptions-=r            " remove right-hand scroll bar
set colorcolumn=72,80        " highlight 72/80 column (PEP8)
highlight ColorColumn guibg=gray18
set nofoldenable             " disable folding

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup/Swap Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                 " no backup files
set nowritebackup            " ... 
set noswapfile               " disable swapfiles 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed       " use system clipboard 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
let g:syntastic_mode_map = { 'mode': 'passive',     
                          \ 'active_filetypes': [],     
                          \ 'passive_filetypes': [] } 
let g:syntastic_auto_loc_list=1     

" airline
let g:airline#extensions#tabline#enabled = 1
