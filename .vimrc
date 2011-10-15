call pathogen#infect()
" This stuff makes vim use spaces instead of tabs and backspace over tabs when the need arises 
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
  set guifont=UbuntuBeta\ Mono:h10
  set fullscreen
endif
syntax on
filetype plugin indent on
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
"This is for pathogen
"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"

"set some tags shit
set tags+=/System/Library/Frameworks/Python.framework/Versions/Current/tags
