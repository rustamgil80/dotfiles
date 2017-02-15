call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ngmy/vim-rubocop'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-rails'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ColorSchemas
Plug 'blueshirts/darcula'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

call plug#end()

set number
set expandtab
set tabstop=2

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

syntax on
colorscheme dracula 
set background=dark
let g:airline_theme='wombat'

set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR> 
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
        let t:curwin = winnr()
        exec "wincmd ".a:key
        if (t:curwin == winnr())
                if (match(a:key,'[jk]'))
                        wincmd v
                else
                        wincmd s
                endif
                exec "wincmd ".a:key
        endif
endfunction

