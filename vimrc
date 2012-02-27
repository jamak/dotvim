set nocompatible
so ~/.vim/unbundle/unbundle.vim
"call pathogen#infect()
"so ~/.vim/bundle/posterous/posterous.vim
"call pathogen#runtime_append_all_bundles()
let mapleader = ","
set cul "Highlight the current line
set laststatus=2 "Show the statusline, even with one file open
set tw=80
filetype off
syntax on
filetype plugin indent on
" This stuff makes vim use spaces instead of tabs and backspace over tabs when the need arises
" because seriously, fuck tabs
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
" changes the colorscheme, removes all the window chrome
if has("gui_running")
  set autochdir
  colorscheme sorcerer
  set guioptions-=L
  set guioptions-=l
  set guioptions-=R
  set guioptions-=m
  set guioptions-=r
  set guioptions-=T
else
  colorscheme peachpuff
endif
if has("gui_macvim")
  set guifont=UbuntuBeta\ Mono:h10
  "set some tags shit
  set tags+=/System/Library/Frameworks/Python.framework/Versions/Current/tags
  set clipboard=unnamed
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
" ,v brings up my .vimrc
" ,V reloads it -- making all changes active (save required)
map <leader>v :vs ~/.vim/vimrc<CR><C-W>_
map <silent> <leader>V :source ~/.vim/vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
"
map <leader>r :registers<CR>
"sensible movements are important, kids.
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
" pinky-saving
imap jj <C-[>
" window movements
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
"make these work in insert mode too
imap <C-W> <C-O><C-W>
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

set statusline=%f    " Path.
set statusline+=%r   " Readonly flag.
set statusline+=%w   " Preview window flag.

set statusline+=\    " Space.

set statusline+=%#redbar#                " Highlight the following as a warning.
"set statusline+=%{SyntasticStatuslineFlag()} " Syntastic errors.
set statusline+=%*                           " Reset highlighting.

set statusline+=%=   " Right align.

" File format, encoding and type.  Ex: "(unix/utf-8/python)"
set statusline+=(
set statusline+=%{&ff}                        " Format (unix/DOS).
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8).
set statusline+=/
set statusline+=%{&ft}                        " Type (python).
set statusline+=)

" Line and column position and counts.
set statusline+=\ (line\ %l\/%L,\ col\ %03c)

" }}}

" Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but it's a pain in the ass to press all the time.
"Never type the same word twice again!
"Use the Linux dictionary when spelling is in doubt.

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

map <D-/> :Tab_or_Complete<cr>

set dictionary="/usr/dict/words"
"Automatically make closing brackets parens, braces etc
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap " ""<Esc>:let leavechar="\""<CR>i
"Leave an enclosed block
imap <Leader>l <Esc>:exec "normal f" . leavechar<CR>a
