" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Aspect settings
set background=dark

" ================ General Config ====================
set history=1000
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
" set autoread                    "Reload files changed outside vim

syntax on   "Turn on syntax highlighting


" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks


" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

" set undodir=~/.vim/backups "No funciona en esta version ViM
" set undofile "No funciona en esta version ViM


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches


" ================ Scrolling ========================

set scrolloff=2         "Start scrolling when we're 3 lines away from margins
set sidescrolloff=15
set sidescroll=1

set ruler
set cindent
autocmd FileType make setlocal noexpandtab
set title

set clipboard=unnamed




" ==============================================
" ==============================================
" ==============================================





" ================ Sergio Old Config ====================
"   
"   
"   let mapleader   =","
"   
"   set autowrite   "Save the file when switching buffers
"   
"   set history     =100    "History of commands and search patterns
runtime macros/matchit.vim  "Enable extended % matching. The % key will switch between opening and closing brackets
"   set wildmenu				"Makes Tab completion useful
"   set wildmode=list:longest               "Makes Tab completion behave shell-like
"   set scrolloff=3          "When cursor moves outside viewport of current window, buffer will scroll 3 lines and not just one
"   set ruler               "Shows line, column and %
"   set visualbell          "Changes audio bell for a screen flash
"   "map <space> <c-f>           "Maps space to ctrl-f (moves forward one screen)
"   "map <backspace> <c-b>       "Maps backspace to ctrl-b (moves backward one screen)
"   
"   
"   "Create a command :Tidy to invoke perltidy"
"   "By default it operates on the whole file, but you can give it a"
"   "range or visual range as well if you know what you're doing."
"   command -range=% -nargs=* Tidy <line1>,<line2>!
"       \perltidy -your -preferred -default -options <args>
"   
"   vmap <tab> >gv    "make tab in v mode indent code"
"   map <s-tab> <gv
"   
"   nmap <tab> I<tab><esc> "make tab in normal mode indent code"
"   nmap <s-tab> ^i<bs><esc>
"   
"   let perl_include_pod   = 1    "include pod.vim syntax file with perl.vim"
"   let perl_extended_vars = 1    "highlight complex expressions such as @{[$x, $y]}"
"   let perl_sync_dist     = 250  "use more context for highlighting"
"   
"   set nocompatible "Use Vim defaults"
"   set backspace=2  "Allow backspacing over everything in insert mode"
"   
"   set autoindent   "Always set auto-indenting on"
"   set expandtab    "Insert spaces instead of tabs in insert mode. Use spaces for indents"
"   set tabstop=4    "Number of spaces that a <Tab> in the file counts for"
"   set shiftwidth=4 "Number of spaces to use for each step of (auto)indent"
"   
"   set showmatch    "When a bracket is inserted, briefly jump to the matching one"
"   
"   set hlsearch	"Highligths when searching
"   set wrapscan	"Wraps results of a search
"   set term=ansi   "Tell we are using a terminal that support colours (for syntax on)
"   syntax on
"   filetype on     "Enable type-specific configuration for every filetype (.c, .pl, etc)
"   
"   map <F4> :execute "set syntax=perl" <CR>
"   
"   " resize current buffer by +/- 5 
"   "nnoremap <D-left> :vertical resize -5<cr>
"   "nnoremap <D-down> :resize +5<cr>
"   "nnoremap <D-up> :resize -5<cr>
"   "nnoremap <D-right> :vertical resize +5<cr>
"   
"   " Switch between window splits using big J or K and expand the split to its 
"   " full size. 
"   " Move vertically in the window through the horizontal splits... 
"   map <C-J> <C-w>j<C-w>_ 
"   map <C-K> <C-w>k<C-w>_ 
"   " Move horizontally in the window through the vertical splits... 
"   map <C-H> <C-w>h<C-w>\| 
"   map <C-L> <C-w>l<C-w>\| 
"   
"   " Buffers Sergio
"   map <F1> :ls <CR> 
"   map <F2> :ls <CR>:b<Space>
"   
"   " Move between buffers
"   map <C-right> <ESC>:bnext<CR>
"   map <C-left> <ESC>:bprevious<CR>
