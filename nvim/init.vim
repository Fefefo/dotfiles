set noshowmode
set nu			" Line number
set ignorecase		" Ignore case when searching
set hlsearch		" highlite search
set showmatch		" show matching {}/()

set termguicolors
syntax on

set noswapfile
set nobackup

set tabstop=2
set shiftwidth=2
set expandtab
set ai "autoindent
set si "smartindent
"filetype indent plugin on
set hidden

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'sheerun/vim-polyglot'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme spaceduck

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set laststatus=2   

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeShowHidden=1

let g:go_fmt_command = "goimports"

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
