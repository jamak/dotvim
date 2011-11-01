call pathogen#infect()
so ~/.vim/bundle/posterous/posterous.vim
"call pathogen#runtime_append_all_bundles()
let mapleader = ","
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
" changes the colorscheme
if has("gui_running")
  set autochdir
  colorscheme twilight
  set guioptions-=L
  set guioptions-=l
  set guioptions-=R
  set guioptions-=m 
  set guioptions-=r
  set guioptions-=T
endif
if has("gui_macvim")
  set guifont=UbuntuBeta\ Mono:h10
  set fullscreen
  "set some tags shit
  set tags+=/System/Library/Frameworks/Python.framework/Versions/Current/tags
  set clipboard=unnamed
  set tags+=/Library/Python/2.6/site-packages/tags
  map <F8> :!/usr/local/bin/ctags -R .<CR>
  let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
elseif has("gui_gtk")
  set guifont=UbuntuMono\ 10
  map <F8> :!ctags -R<CR>
  let Tlist_Ctags_Cmd = "/usr/bin/ctags"
  set tags+=/usr/lib/python2.7/tags
  set tags+=/usr/local/lib/python2.7/site-packages/tags
  set tags+=/usr/local/lib/python2.7/dist-packages/tags
endif
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
"auto-saves buffers on switch
set autowrite
"This is for taglist
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
"Use TAB to complete when typing words, else inserts TABs as usual.
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
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"
"Automatically make closing brackets parens, braces etc
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap " ""<Esc>:let leavechar="\""<CR>i
"Leave an enclosed block
imap <Leader>l <Esc>:exec "normal f" . leavechar<CR>a
