set nocompatible              " be iMproved, required
filetype off                  " required

"tern
"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim


" prevent clash with youcompleteme, change snippet trigger
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERD tree
map <C-t> :NERDTreeTabsToggle<CR>
map <C-f> :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1

"close vim if only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" BOI STUFFS
" auto close brackets
inoremap {<CR> {<CR>}<C-o>O
inoremap (<CR> (<CR>)<C-o>O

" LEO STUFFS
"Enable bash-like behavior when press tab in command mode
set wildmode=longest,list,full
set wildmenu
syntax on                               " turn syntax on
set showcmd                             " Show (partial) command in status line.
set showmatch                           " Show matching brackets.
set showmode                            " Show current mode.
set ruler                               " Show the line and column numbers of the cursor at bottom bar
"set colorcolumn=100                     " show margin line
"set textwidth=100                       " Hard-wrap long lines as you type them.
set number                              " Show the line numbers on the left side.
set formatoptions+=o                    " Continue comment marker in new lines.
set number                              " show line number
set autoindent                          " turn auto indent on
set smartindent                         " smart indent
set cursorline                          " hightlight current line
set noerrorbells                        " No beeps.
set modeline                            " Enable modeline.
set esckeys                             " Cursor keys in insert mode.
set linespace=0                         " Set line-spacing to minimum.
set nojoinspaces                        " Prevents inserting two spaces after punctuation on a join (J)
set autoread                            " Auto refresh file content when there are external changes to the file
autocmd FocusGained * silent! if !&diff | checktime " use checktime to trigger autoread when Vim gains focus
" Change cursor shape in different modes: https://github.com/neovim/neovim/wiki/FAQ#how-can-i-change-the-cursor-shape-in-the-terminal
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" True color for NVIM
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Change tab to 4 spaces (just press tab then type something, you will see)
set tabstop=4                           " set tab = 4 spaces
set shiftwidth=4                        " set tab when use > or < = 4 space
set expandtab                           " tab as spaces
" More natural splits
set splitbelow                          " Horizontal split below current.
set splitright                          " Vertical split to right of current.
" Scrolling
if !&scrolloff
    set scrolloff=3                     " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5                 " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline                       " Do not jump to first character with page commands.
"Show whitespaces
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                                 " Show problematic characters.
"Search stuff
set ignorecase                           " Make searching case insensitive
set smartcase                            " ... unless the query has capital letters.
set incsearch                            " Incremental search.
set gdefault                             " Use 'g' flag by default with :s/foo/bar/.
set magic                                " Use 'magic' patterns (extended regular expressions).
set hlsearch                             " Highlight search results.
" Use <C-L> to toggle hlsearch.
let hlstate=0
nnoremap <silent> <c-l> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=(hlstate+1)%2<cr>
"Mouse support
set mouse=a
"Copy and paste
set clipboard=unnamed  " use the clipboards of vim and win
"Setup colorscheme
"colorscheme molokai
"Make backspace works
set backspace=indent,eol,start
"Maximize search history
set history=10000
"Set difftool view default is vertical (https://github.com/tpope/vim-fugitive/issues/508)
set diffopt+=vertical
"Easier to prettify JSON. Usages: :FormatJSON
com! FormatJSON %!python -m json.tool

"[OmniCompletion]
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete


