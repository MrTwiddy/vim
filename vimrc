"Enable 256 color
set t_Co=256
"Changes colorscheme
colorscheme railscasts

set nocompatible
"Make backup files
set backup
"Attempt to determine filetype
filetype indent plugin on
"Better command-line completion
set wildmenu
"Show partial commands in the last line of the screen
set showcmd
"Display line numbers on the left
set number
"Show matching brackets
set showmatch
"Enable syntax highlighting
syntax on

"Allow to re-use window and switch from an unsaved buffer without saving it first
set hidden
"Share windows clipboard
set clipboard+=unnamed
"Allow backspacing over autoindent, line breaks and start of inster action
set backspace=indent,eol,start
"When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line
"you're currently on. Useful for README etc.
set autoindent
"Stop certain movements from always going to the first character of a line
set nostartofline

"TAB is 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
"Display the cursor position on the last line of the screen or in the status line of a window
set ruler
"Instead of failing a command because of unsaved changes raise a dialogue asking if you want to save changed
"files
set confirm
"Use visual bell instead of beeping
set visualbell
"Enable use of the mouse for all modes
set mouse=a
"Always display status line, even if only one window is displayed
set laststatus=2
"Sets command window height to 2 lines
set cmdheight=2
"Quickly time out on keycodes, but never time out on pappings
set notimeout ttimeout ttimeoutlen=200

"Highlight column 110
set colorcolumn=110
highlight ColorColumn ctermbg=blue

"History size
set history=500
"Use 100 levels of undo
set undolevels=100
"Presistent undo
set undofile			"Save undo's after file closes
set undodir=$HOME/.vim/undo	"Where to save undo's
set undolevels=100		"Use 100 levels of undo
set undoreload=100		"Number of lines to save for undo's

"Use case insensitive search, exept when using capital leters
set ignorecase
set smartcase
"Display the match for a search pattern when halfway typing it
set incsearch
"Highlight the entire word when searching for it
set hlsearch

"Map Y to yank until EOL, rather than as yy, which is default
map Y y$
"Hit F11 to paste
set pastetoggle=<F11>
"Compile
autocmd filetype cpp nnoremap <F4> :!g++ % -ggdb -o %:r <CR>
"Compile and run
autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -o %:r && ./%:r <CR>
"Compile and run with make
noremap <F6> :w<CR> :silent !clear; make<CR> :!echo "--------------- Running ---------------"; echo; command time -v "./%<"<CR>

"Plugins
"Pathogen
execute pathogen#infect()
"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

"YouCompleteMe
let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
