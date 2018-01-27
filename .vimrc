syntax on

call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'udalov/kotlin-vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'powerline/powerline'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'thinca/vim-quickrun'
call plug#end()

colorscheme wal
set number
set encoding=utf8
set nowrap
set nocompatible
set ruler
" Disable arrow movement, resize splits instead. 
let g:elite_mode=1
if get(g:, 'elite_mode') 
	nnoremap <Up> :resize +2<CR> 
	nnoremap <Down> :resize -2<CR> 
	nnoremap <Left> :vertical resize +2<CR> 
	nnoremap <Right> :vertical resize -2<CR> 
endif

"-----------Split Management -----------"
set splitbelow
set splitright
nmap <C-j> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-----------Search -----------"
set hlsearch
set incsearch

"-----------Mapping-----------"
nmap <C-d> :NERDTreeToggle<cr>
nmap <Leader><space> :nohlsearch<cr>

"--------Powerline----------"
let g:powerline_pycmd="py3"
set laststatus=2

"-----------Syntastic-----------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-------------IntentLine---------------"
let g:indentLine_setColors = 0
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1
"----------Java AutoComplete-----------"
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
 nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
  nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
  nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
  nmap <leader>jii <Plug>(JavaComplete-Imports-Add)
  imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
  imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
  imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
  imap <C-j>ii <Plug>(JavaComplete-Imports-Add)
  nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
  imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)
  nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
  nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
  nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
  nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
  nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)
  imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
  imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
  imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
  nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
