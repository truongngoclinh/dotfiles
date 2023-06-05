source ~/.vimrc.keymap
set encoding=utf-8

set pastetoggle=<F2>
set nocompatible              " be iproved, required
set binary
filetype off                  " required

imap jk <Esc>

"map
":map K dwelp
":map e ea
":map V lbi<B>^[e</B>^[
":map g I/* "^["A */"^["
":map! % ^[kA:^[jA
:map <C-S> :nohlsearch <CR>

"abbr
ab pr private
ab pu public
ab prsf private static final
ab asap as soon as possible
ab adr android
ab fl fastlane
ab prm #pragma mark - 

"vim 7th edition 
set nowrapscan

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

" let g:ycm_path_to_python_interpreter="/usr/local/Cellar/python/3.7.2/bin/python3"
let g:ycm_path_to_python_interpreter="/usr/bin/python2.7"

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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
Plugin 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'itchyny/lightline.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'maksimr/vim-jsbeautify'
" Option
Plugin 'honza/vim-snippets'
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'


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
"map <C-f> :NERDTreeFind<CR>

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

" jsbeautify
".vimrc
"map <c-f> :call JsBeautify()<cr>
""or
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"for json
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
""for jsx
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
""for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>"""""

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" solarized
"syntax enable
"set background=dark
"colorscheme solarized

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

" BOI STUFFS
" auto close brackets
inoremap {<CR> {<CR>}<C-o>O
inoremap (<CR> (<CR>)<C-o>O
inoremap {{<CR> {{<CR>}}<C-o>O
inoremap {(<CR> {(<CR>)}<C-o>O
" inoremap {{<Space> {{}}<Esc>hi
" inoremap {(<Space> {()}<Esc>hi
" inoremap ({<Space> ({})<Esc>hi
"inoremap <<Space> <><Esc>i // react native only, python dont need
" inoremap <<CR> <<CR>/><C-o>O
"inoremap "<Space> ""<Esc>i // conflict with below syntax
" inoremap ("<Space> ("")<Esc>hi
" inoremap (<Space> ()<Esc>i
" inoremap {<Space> {}<Esc>i
" inoremap ([<CR> ([<CR>])<C-o>O
" inoremap <F3> gg=G
nnoremap == gg=G
vnoremap == gg=G
inoremap == gg=G
" custom keymap
"
" vim copy
vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR> 

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
""set number                              " show line number
set autoindent                          " turn auto indent on
set smartindent                         " smart indent
set cursorline                          " hightlight current line
set noerrorbells                        " No beeps.
set modeline                            " Enable modeline.
"set esckeys                             " Cursor keys in insert mode.
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
set ic
set smartcase                            " ... unless the query has capital letters.
set incsearch                            " Incremental search.
set gdefault                             " Use 'g' flag by default with :s/foo/bar/.
set magic                                " Use 'magic' patterns (extended regular expressions).
set autowrite
set hlsearch                             " Highlight search results.
" Use <C-L> to toggle hlsearch.
let hlstate=0
nnoremap <silent> <c-l> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=(hlstate+1)%2<cr>
"Mouse support
set mouse=a
"Copy and paste
"set clipboard=unnamed  " use the clipboards of vim and win
set clipboard+=unnamed

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

"vim-jsx https://github.com/mxw/vim-jsx
"let g:jsx_ext_required = 0
"set t_Co=256
"syntax on
"set background=dark
"colorscheme distinguished
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"Crontab
autocmd filetype crontab setlocal nobackup nowritebackup
"set backupcopy=yes

" func
" function! Hi()
"     echo "Hi!"
" endfunction
" map <silent> <space>, :call Hi()
" 
" ----------------------------------------------------------------------------
" <F8> | Color scheme selector
" ----------------------------------------------------------------------------
function! s:rotate_colors()
  if !exists('s:colors')
    let s:colors = s:colors()
  endif
  let name = remove(s:colors, 0)
  call add(s:colors, name)
  execute 'colorscheme' name
  redraw
  echo name
endfunction
nnoremap <silent> <F8> :call <SID>rotate_colors()<cr>

" fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" search
let g:eregex_default_enable = 0
let g:EasyGrepCommand=1
let g:EasyGrepPerlStyle=1

" status line 
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

if !has('gui_running')
  map <,><n> <A-n>
endif

function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)<Paste>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark
