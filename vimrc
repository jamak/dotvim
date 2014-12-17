set nocompatible
set t_Co=256
" so ~/.vim/unbundle/unbundle.vim
"call pathogen#infect()
"so ~/.vim/bundle/posterous/posterous.vim
"call pathogen#runtime_append_all_bundles()
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'sjl/gundo.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'sunaku/vim-unbundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'agscala/vim-posterous'
Plugin 'b4winckler/vim-objc'
Plugin 'sophacles/vim-processing'
" Plugin 'klen/python-mode'
Plugin 'rstacruz/sparkup'
Plugin 'msanders/cocoa.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-commentary'
Plugin 'ivanov/vim-ipython'
Plugin 'JuliaLang/julia-vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'nsf/gocode'
Plugin 'mileszs/ack.vim'
Plugin 'Twinside/vim-hoogle'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'derekwyatt/vim-scala'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

let mapleader = ","
set clipboard=unnamed
set laststatus=2 "Show the statusline, even with one file open
set showtabline=0
set tw=80
syntax on
"airline stuff
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"OCaml Merlin stuff
let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
let g:syntastic_ocaml_checkers = ['merlin']

"Rainbow Parens EVERYWHERE
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" This stuff makes vim use spaces instead of tabs and backspace over tabs when the need arises
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"so when I gist stuff, the gist link gets copied to the clipboard
let g:gist_clip_command = 'pbcopy'

"remember which line we were at when we last edited a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"split to the right, the way my brain thinks it should happen anyway
set splitright
set backspace=indent,eol,start
"also, remove those gross splitchars in terminal vim
set fillchars+=vert:\ 
"to allow mouse scrolling on local vim sessions.
set mouse=a

" changes the colorscheme, removes all the window chrome
if has("gui_running")
  colorscheme Ciapre
  set guioptions-=L
  set guioptions-=l
  set guioptions-=R
  set guioptions-=m
  set guioptions-=r
  set guioptions-=T
else
  "Make sure vim knows we can send a crapload of chars for redraw
  set ttyfast
  colorscheme default
  "make the complete window bright/readable in light and dark bg
  hi Pmenu ctermbg=91
  " let &background = ( &background == 'dark'? 'light' : 'dark' )
  " if &bg ==? 'dark'
  "     colorscheme Tomorrow-Night
  " elseif &bg ==? 'light'
  "     colorscheme Tomorrow
  " endif
endif


set cul "Highlight the current line
"make sure the current line is bolded, not underlined.
hi CursorLine term=italic cterm=underline "guibg=light

" "Slimv stuff!
" let g:slimv_swank_cmd='!lein swank &'

"Gui stuff to make my desktop play nice"
if has("gui_macvim")
  " set guifont=Droid\ Sans\ Mono:h14
  " set guifont=monofur:h18
  set guifont=M+\ 1mn\ thin:h22
  "set some tags shit
  set tags+=/System/Library/Frameworks/Python.framework/Versions/Current/tags
  set tags+=/Library/Python/2.6/site-packages/tags
  map <F8> :!/usr/local/bin/ctags -R .<CR>
  "this maps toggle fullscreen to leader f
  map <leader>f :set invfullscreen<CR>
  let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
elseif has("gui_gtk")
  set guifont=UbuntuMono\ 10
  map <F8> :!ctags -R<CR>
  let Tlist_Ctags_Cmd = "/usr/bin/ctags"
  set tags+=/usr/lib/python2.7/tags
  set tags+=/usr/local/lib/python2.7/site-packages/tags
  set tags+=/usr/local/lib/python2.7/dist-packages/tags
endif


set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
"===============================================================
"Shortcuts!
"===============================================================
" ,1 brings up my .vimrc
" ,2 reloads it -- making all changes active (save required)
map <leader>1 :leftabove vsplit ~/.vim/vimrc<CR><C-W>_
map <silent> <leader>2 :source ~/.vim/vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
" make buffer switch a bit more rational
map <C-e> <C-^>
""map <leader>r :registers<CR>
"sensible movements are important, kids.
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
" pinky-saving
imap jj <C-[>
" " window movements
" map <C-h> <C-w>h
" map <C-l> <C-w>l
" map <C-j> <C-w>j
" map <C-k> <C-w>k
"make these work in insert mode too
" imap <C-w> <C-O><C-w>
"aaand map the direction keys to the splits
map <Left> <C-w>h
map <Right> <C-w>l
map <Down> <C-w>j
map <Up> <C-w>k
"use + and - to resize vertical splits
map - <C-W><
map + <C-W>>
"and for hsplits use alt-< or alt->
map <M-,> <C-W>-
map <M-.> <C-W>+
"auto-saves buffers on switch
set autowrite
"This is for taglist
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
"Aaaaaand this is for NERDTree
map <leader>a :NERDTreeToggle<CR>
"" Status line ------------------------------------------------------------- {{{

"augroup ft_statuslinecolor
"    au!
"
"    au InsertEnter * hi StatusLine ctermfg=196 guifg=#FF3145
"    au InsertLeave * hi StatusLine ctermfg=130 guifg=#CD5907
"augroup END

"muuuch faster omnicomplete
imap <C-f> <C-x><C-o>

set dictionary="/usr/dict/words"
" "Automatically make closing brackets parens, braces etc
" inoremap ( ()<Esc>:let leavechar=")"<CR>i
" inoremap { {}<Esc>:let leavechar="}"<CR>i
" inoremap [ []<Esc>:let leavechar="]"<CR>i
" inoremap " ""<Esc>:let leavechar="\""<CR>i
" "Leave an enclosed block
" imap <Leader>l <Esc>:exec 'normal f' . leavechar<CR>a

