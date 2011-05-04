" This must be first, because it changes other options as side effect
set nocompatible

" enable mouse support in vim
set mouse=a
" don't wrap lines
set nowrap
" ignore case in search unless search has capital
set ignorecase
" ignore case if search pattern is all lowercase
set smartcase
" indenting tabs according to shiftwidth, not tabstop
set smarttab
" show search matches as you type
set incsearch
" highlight search terms
set hlsearch
" always set autoindent
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" allow bs over everything in insert mode
set backspace=indent,eol,start
" indent is 2 columns
set shiftwidth=2
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" tab is 2 columns
set tabstop=2
" expand tabs into spaces
set expandtab
" set show matching parenthesis
set showmatch
" open at 120 columns
set columns=120
" set out max expanded
set lines=62
" cursor row, column, file percentage in bottom of vim
set ruler
" show line numbers
set number
" set cross-hairs on cursor
set cursorcolumn cursorline

" syntax folding unless overridden by filetype setting
set foldmethod=syntax

" no more backup files!
set nobackup
set noswapfile

" highlight whitespaces
set list
set listchars=tab:»-,trail:·,extends:#,nbsp:·

" enable the tab completion menu
set wildmenu
" on tab, complete to fullest autocompletion, list out remaining completions
set wildmode=list:longest,list

" prevent autoformatting during paste:
set pastetoggle=<F2>

" enable per-directory .vimrc files and disable unsafe commands in those files
set exrc
set secure

" file tabs
map <leader>tn :tabnew %<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>te :tabedit
map <leader>tf :tabfind
map <C-Tab> :tabnext<cr>
map <C-S-Tab> :tabprev<cr>
imap <C-Tab> <esc>:tabnext<cr>
imap <C-S-Tab> <esc>:tabprev<cr>

" Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”?
" Use this to clear search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>

" makes j and k work the way you expect instead of working in some archaic
" 'movement by file line instead of screen line' fashion
nnoremap j gj
nnoremap k gk

" Next, get rid of that stupid goddamned help key that you will invaribly hit
" constantly while aiming for escape:
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" colorscheme: wombat
set t_Co=256
colors wombat256

" detect the type of file, load applicable .vim files
filetype plugin indent on

" switch syntax highlighting on
syntax on

" makefile settings
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent
