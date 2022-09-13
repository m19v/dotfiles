set nocompatible
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

set history=256 
set timeoutlen=250
set clipboard+=unnamed          " copy to clipboard
set pastetoggle=<F10>               " set pastemode (no formatting)
set shiftround                      " round indent to multiple of shiftwidth
set t_Co=256

set autowrite
set autoread

set nobackup
set nowritebackup
set directory=~/.tmp
set noswapfile

set hidden                          " enables swapping of files without saving

set hlsearch
set ignorecase
set smartcase
set incsearch

let mapleader = ' '
let maplocalleader = '	'

" ===================[Formatting]===================

set fo+=l " wrap lines wider than the window without linebreaking
set fo-=o " automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " do not automatically insert a comment leader after an enter
set fo-=t " do not auto-wrap text using textwidth (does not apply to comments)

set wrap
set linebreak
set textwidth=0
set wrapmargin=0

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

set backspace=indent
set backspace+=eol
set backspace+=start
set autoindent
set cindent

" ===================[Visual]===================
syntax on
" set background=dark

let base16colorspace=256 " Access colors present in 256 colorspace

set mousehide

set number
set relativenumber
set showmatch
set matchtime=2

set incsearch
set hlsearch

set wildmode=list:longest,full

set completeopt+=preview

set novisualbell
set noerrorbells

set laststatus=2
set shortmess=atI
set showcmd
set scrolloff=2

set foldenable
set foldmethod=syntax

set foldopen=block,hor,tag
set foldopen+=percent,mark
set foldopen+=quickfix
set foldlevelstart=99

set virtualedit=block

set splitbelow
set splitright

set iskeyword-=_

" set list
set listchars=tab:▸\ ,eol:¬ 

" Ctrl-j is normally bound to 0x00 or NULL, make it available for binding
let g:C_Ctrl_j = 'off'

" Enable javascript folding
let javaScript_fold=1

" Just in case I ever stop using Linux *sob*
if has("gui_running")
  set guioptions-=m guioptions-=T guioptions-=r guioptions-=L
  if has("x11")
    set guifont=-*-consolas-r-normal-*-*-60-*-*-m-*-*
  endif
endif

colorscheme slate
hi Search cterm=NONE ctermfg=black ctermbg=yellow

" =================================[ Movement ]=================================

" Press jk to exit insert mode
inoremap jk <esc>
vnoremap jk <esc>

nnoremap <C-l> :tabnext<cr>
nnoremap <C-h> :tabprevious<cr>

" <tab><tab> to change to the next buffer
nnoremap <localleader><tab> :bn<cr>

" <space><tab> to change to the next window
nnoremap <leader><tab> <c-w><c-w>

" Tab movement
nnoremap <leader>1 {1}gt
nnoremap <leader>2 {2}gt
nnoremap <leader>3 {3}gt
nnoremap <leader>4 {4}gt
nnoremap <leader>h gT
nnoremap <leader>l gt

" Move between paragraphs
nmap <C-k> {
nmap <C-j> }

" ==============================[ Text formatting ]==============================

" Quicker indent
nnoremap < my<<`y
nnoremap > my>>`y
vnoremap < <gv
vnoremap > >gv

" Fix indent of the document by pressing = twice
nnoremap == m`gg=G``zz

" Press <tab>j or <tab>k to insert a row below or above the current line 
" respectively. Works with modifiers ([count]<tab>j) e.g. 5<tab>j
nmap <leader>j o<esc>k
nmap <leader>k O<esc>j

" Bubble a line up or down
nmap <localleader>k ddkP
nmap <localleader>j ddp

" ==================================[ Folding ]==================================

" Note: requires matchit to properly fold functions
nnoremap <leader>c zf%

" Open a fold using leader o
nnoremap <leader>o za

" ==============================[ Copy and paste ]==============================

" Paste from x buffer 
" Note: write :version to check compability (requires xterm_clipboard)
nnoremap <leader>p :set paste<cr>"+p :set nopaste<cr>
nnoremap <leader>P :set paste<cr>"+P :set nopaste<cr>

" Copy to x buffer using yy or ctrl+c (yy is originally analogous to Y)
" "<reg>y copies the selected text to register <reg>
vnoremap yy my"+y`y
vnoremap <C-c> "+y

" ================================[ Set options ]================================

nnoremap <silent><localleader>p :set paste!<cr>

" =============================[ Window management ]=============================

" Resize the vertically split windows
" Note: The resize is relative to the currently focused window
nnoremap <localleader>h :vert res +10<cr>
nnoremap <localleader>l :vert res -10<cr>
nnoremap <leader>+ :res +10<cr>
nnoremap <leader>- :res -10<cr>

" Split vertically using <leader>v and horizontally using <leader>s
nnoremap <leader>v :vsp<cr>
nnoremap <leader>s :sp<cr><c-w><c-w>

" ==================================[ Folding ]==================================

" Note: requires matchit to properly fold functions
nnoremap <leader>c zf%

" Open a fold using leader o
nnoremap <leader>o za

" ==============================[ Copy and paste ]==============================

" Paste from x buffer 
" Note: write :version to check compability (requires xterm_clipboard)
nnoremap <leader>p :set paste<cr>"+p :set nopaste<cr>
nnoremap <leader>P :set paste<cr>"+P :set nopaste<cr>

" Copy to x buffer using yy or ctrl+c (yy is originally analogous to Y)
" "<reg>y copies the selected text to register <reg>
vnoremap yy my"+y`y
vnoremap <C-c> "+y

" ===================================[ Misc ]===================================

" Nicer bindings for basic commands
nnoremap , :
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<cr>
" Close QuickFix window using leader qf
nnoremap <leader>qf :ccl<cr>

" Saves using Ctrl-S, but only if the buffer has been changed
noremap <C-s> :update<cr>
imap {<CR> {<CR>}<ESC>O
