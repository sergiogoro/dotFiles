set nocompatible  "Use Vim settings, rather then Vi settings (much better!). This must be first, because it changes other options as a side effect.


" " ================ Vundle Config ====================
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" " alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
" 
" " let Vundle manage Vundle, required
" Bundle 'gmarik/vundle'
" 
" " The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " scripts not on GitHub
" " Bundle 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " Bundle 'file:///home/gmarik/path/to/plugin'
" " ...
" 
" Bundle 'Tagbar'
" 
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
" 
" " ================ End of Vundle Config ====================

" ================ Macros ====================
runtime macros/matchit.vim  "Enable extended % matching. The % key will switch between opening and closing brackets

" ================ Aspect ====================
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
set ignorecase  "Searches ignoring case

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

" set undodir=~/.vim/backups "No funciona en esta version ViM
" set undofile "No funciona en esta version ViM


" ================ Indentation ======================
" === Considerations ===
" Using a 'tabstop' value other than the default (8 spaces), will result in
" your file having a different appearance when using tools such as cat (type
" on Windows), which can't use a custom width tab character. On the other
" hand, using hard tabs for indentation, allows others to view your code with
" the amount of indentation they prefer. Which of these considerations should
" have priority, is a matter of personal preference (and company policy).

" == Indents
filetype plugin on
filetype on
filetype indent on

set autoindent  "When pressing enter, cursor goes below aligned with the start of the upper line
                "Does nothing more than copy the indentation from the previous
                " line, when starting a new line. It can be useful for
                " structured text files, or when you want to control most of
                " the indentation manually, without Vim interfering.
set smartindent "Automatically inserts one extra level of indentation in some cases, and works for C-like files

" == Tabs
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually

set smarttab      "Affects how <TAB> key presses are interpreted depending on where the cursor is.
                  "If 'smarttab' is on, a <TAB> key inserts indentation according to 'shiftwidth' at
                  " the beginning of the line, whereas 'tabstop' and 'softtabstop' are used elsewhere.
                  " There is seldom any need to set this option, unless it is necessary to use hard TAB characters in body text or code.

set shiftwidth=2  "Affects what happens when you press >>, << or ==. It also affects how automatic indentation works

set softtabstop=2 "Affects what happens when you press the <TAB> or <BS> keys. Its default value is the same as the value
                  " of 'tabstop', but when using indentation without hard tabs or mixed indentation, you want to set it tothe same value
                  " as 'shiftwidth'. If 'expandtab' is unset, and 'tabstop' is different from 'softtabstop', the <TAB> key
                  " will minimize the amount of spaces inserted by using multiples of TAB characters. For instance, if 'tabstop' is 8, and
                  " the amount of consecutive space inserted is 20, two TAB characters and four spaces will be used

set tabstop=2   "Changes the width of the TAB character, plain and simple

set expandtab   "Changes tabs for spaces
                "Affects what happens when you press the <TAB> key. If 'expandtab' is set, pressing the <TAB> key will always insert
                " 'softtabstop' amount of space characters. Otherwise, the amount of spaces inserted is minimized by using TAB characters

"set ts=2  "One tab = 2 spaces

" == Lines
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

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


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
