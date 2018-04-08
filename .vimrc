set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'fugitive.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tomasiser/vim-code-dark'


call vundle#end()            " required
filetype plugin indent on    " requiredn

colorscheme codedark
:syntax on

let g:airline_theme='codedark' "airline theme (status bar)

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber "shows relative numbers to current line
set number "show line numbers
set laststatus=2 "for airline
set t_Co=256
set hidden
set backspace=2
set timeoutlen=300

"For proper tabbing and bracket insertion"
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

inoremap main<cr> #include<bits/stdc++.h><cr>using namespace std;<cr><cr>int main(){<cr>}<c-o><s-o>return 0;<c-o><s-o>

inoremap idemode <c-o>:vsp<cr><c-o><c-w>l<cr><c-o>:e stdout.txt<cr><c-o>:sp<cr><c-o><c-w>k<c-o>:e stdin.txt<cr><c-o><c-w>h

"----------------------------------
"vim-airline doesn't appear until I create a new split
set laststatus=2
set noshowmode

"Bundle set guifont=Liberation\ Mono\ for\ Powerline\ 10

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " This shows vim top tab with buffers and name of the file

"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

set cursorline
hi Normal guibg=NONE ctermbg=NONE
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -std=c++1z -o %:r % && ./%:r<CR>
autocmd FileType cpp nmap <buffer> <F6> :w<bar>!g++ -std=c++1z -o %:r % && ./%:r < stdin.txt > stdout.txt<CR><CR>
