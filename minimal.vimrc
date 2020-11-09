"Minimal plugin-free .vimrc

"basic vim customisation
let mapleader=" "
syntax on
set autoindent
set number
set nostartofline
filetype plugin on

"improve search
set hlsearch
set ignorecase
set smartcase
set relativenumber
nnoremap <C-L> :nohl<CR><C-L>

"spaces for tabs
set softtabstop=4
set shiftwidth=4
set expandtab

"for python source files, highlight columns 73 and 80
"python comments shouldn't overrun 72 columns and
"logical lines shouldn't overrun 79
autocmd BufEnter *.py highlight ColorColumn ctermbg=blue
autocmd BufEnter *.py set colorcolumn=80,73

"for c++ source files, highlight column 121
"no official style guide however 120 is widely accepted
autocmd BufEnter *.cpp highlight ColorColumn ctermbg=yellow
autocmd BufEnter *.cpp set colorcolumn=121
"make navigating python sources easier, map pageup/down to go to
"previous/next function definition.
"map alt - pageup/dpwn to go to previous/next class definition
autocmd BufEnter *.py nnoremap <silent><PageDown> /\<def\><CR>zz :noh<CR>
autocmd BufEnter *.py nnoremap <silent><PageUp> 0?\<def\><CR>zz :noh<CR>
autocmd BufEnter *.py nnoremap <silent><A-PageDown> /\<class\><CR>zz :noh<CR>
autocmd BufEnter *.py nnoremap <silent><A-PageUp> 0?\<class\><CR>zz :noh<CR>

autocmd BufEnter *.py inoremap <silent><PageDown> <esc>/\<def\><CR>zz :noh<CR>i
autocmd BufEnter *.py inoremap <silent><PageUp> <esc>0?\<def\><CR>zz :noh<CR>i
autocmd BufEnter *.py inoremap <silent><A-PageDown> <esc>/\<class\><CR>zz :noh<CR>i
autocmd BufEnter *.py inoremap <silent><A-PageUp> <esc>0?\<class\><CR>zz :noh<CR>i

autocmd BufEnter *.py vnoremap <silent><PageDown> <esc>/\<def\><CR>zz :noh<CR>v
autocmd BufEnter *.py vnoremap <silent><PageUp> <esc>0?\<def\><CR>zz :noh<CR>v
autocmd BufEnter *.py vnoremap <silent><A-PageDown> <esc>/\<class\><CR>zz :noh<CR>v
autocmd BufEnter *.py vnoremap <silent><A-PageUp> <esc>0?\<class\><CR>zz :noh<CR>v


"improved window navigation for vimsplits
nnoremap <silent> <A-Up> :wincmd k<CR>
nnoremap <silent> <A-Down> :wincmd j<CR>
nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

inoremap <silent> <A-Up> <esc>:wincmd k<CR>i
inoremap <silent> <A-Down> <esc>:wincmd j<CR>i
inoremap <silent> <A-Left> <esc>:wincmd h<CR>i
inoremap <silent> <A-Right> <esc>:wincmd l<CR>i

vnoremap <silent> <A-Up> <esc>:wincmd k<CR>v
vnoremap <silent> <A-Down> <esc>:wincmd j<CR>v
vnoremap <silent> <A-Left> <esc>:wincmd h<CR>v
vnoremap <silent> <A-Right> <esc>:wincmd l<CR>v

set splitbelow
set splitright

"insert spaces in normal mode
nnoremap <silent> ss i<space><esc>
"insert ; in normal mode
nnoremap <silent> ;; $a;<esc>0
