"This is my configuration file for the nvim installation on my device...

" BASIC CONFIGURATION ---------------------------------------------------------------- {{{


"   Security:

"Disabling this for preventing arbitrary code execution
set nomodeline

"   NVIM visual aesthetics:

"Enabling relative-line numbers
set number
set relativenumber
"Show the mode I am in, in the last line
set showmode
"Enabling status bar
set laststatus=2
"Cofiguring default encoding
set encoding=utf-8

"   NVIM working aesthatics:

"Enabling auto completion menu after pressing TAB
set wildmenu
"Modifying split settings, so that they aren't dumb
set splitbelow splitright
"Making undo persistent
set undofile

"   CODE visual aesthetics:

"Configuring file based beautification (syntax-highlighting & indentation)
filetype on
filetype indent on
filetype plugin on
"Enabling syntax highlighting
" -- syntax on
set wrap
set shiftwidth=4
"Specifying the number of columns a tab takes
set tabstop=4
"Making above setted things invokable
set smarttab

"   Smart searching configuration:

"While searching though a file incrementally highlight matching characters as you type
set incsearch
"Ignoring capital letters during search
set ignorecase
"Overriding the ignorecase option if searching for capital letters
"Enables searching with capital letters when specified
set smartcase
"Enabling "Show matching" words during a search
set showmatch
"Enabling the use of highlighting when doing a search
set hlsearch


" }}}

" KEYBINDINGS ---------------------------------------------------------------- {{{


" Setting up the leader key(to specify execution of custom commands):
let mapleader = " "

"   Integrating vim clipboard with system clipboard:

"yank/copy to system clipboard
vnoremap <leader>y "*y
nnoremap <leader>y "*y
"put/paste from system clipboard
vnoremap <leader>p "*p
nnoremap <leader>p "*p

"   Sourcing my vimrc
nnoremap <leader>x :source ~/.config/nvim/init.vim<cr>
"   Editing my vimrc
nnoremap <leader>e :vsplit <cr>:e ~/.nvimrc <cr>

"	Reloading bracy
nnoremap <leader>r :w <cr>:BraceyReload<cr>

"   Keybinding for my code-runner
nnoremap rr :w<cr> :FloatermNew --title=code-runner --height=0.6 --width=0.7 --autoclose=0 run % <cr>
nnoremap <expr> ff expand('%:t') ==? 'fish' ? ":FloatermToggle <cr>" : execute(':ls! hR') ==? "" ? ":FloatermNew --title=code-runner --height=0.6 --width=0.7 <cr> <C-\><C-n>:FloatermToggle <cr>:w <cr>:FloatermSend --title=code-runner run % <cr>:FloatermToggle <cr>" : ":w <cr>:FloatermSend --title=code-runner run % <cr>:FloatermToggle <cr>"
tnoremap ff <C-\><C-n>:FloatermToggle <cr>

"   opening terminal while working on file
nnoremap <expr> tt execute(':ls! hR') ==? "" ? ":FloatermNew --title=terminal --height=0.6 --width=0.7 <cr>" : ":FloatermToggle <cr>"

"   Usual NVIM navigation keybinds:

nnoremap <leader>q :q <cr>
nnoremap <leader>w :w <cr>
nnoremap <leader>s :wq <cr>
inoremap jj <Esc>

"   NVIM windows:

" For my file explorer
nnoremap <leader>f :Lex! <cr>

" For my tabs
nnoremap <leader>t :tabedit <cr>

" Splitting the motha' fuckin' buffer into multiple buffers
nnoremap <leader>h :split <cr>
nnoremap <leader>v :vsplit <cr>

" Resizing those motha' fuckin' buffers
nnoremap <M-down> :resize +2 <cr>
nnoremap <M-up> :resize -2 <cr>
nnoremap <M-left> :vertical resize -2 <cr>
nnoremap <M-right> :vertical resize +2 <cr>

" Getting out of entry into the terminal mode
tnoremap jj <C-\><C-n>

" }}}

" PLUGINS ---------------------------------------------------------------- {{{


" Selecting the version of python
let g:python3_host_prog="/opt/homebrew/opt/python@3.10/bin/python3.10"

" Install vim-plugin for this to work
call plug#begin('~/.vim/plugged')

  " Autocompletion
  Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

  " Symnatic checking for syntax errors
  Plug 'dense-analysis/ale'
  " Commenting utility
  Plug 'tpope/vim-commentary'
  " Collection of color themes
  Plug 'EdenEast/nightfox.nvim'
  " Status line
  Plug 'vim-airline/vim-airline'
  " Rainbow brackets
  Plug 'frazrepo/vim-rainbow'
  " Floating Terminal
  Plug 'voldikss/vim-floaterm'
  " Multi-cursor
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  " live-server
  " Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

  " " Discord presence
  " Plug 'vimsence/vimsence'

call plug#end()

"   Calling out the plugins


" Setting up colorscheme
colorscheme codedark

" RainbowToggle
let g:rainbow_active = 1

" Configuring coc.vim
let g:coc_global_extensions = [
	\ 'coc-snippets' ,
	\ 'coc-pairs' , 
	\ 'coc-prettier' ,
	\ 'coc-clangd' ,
	\ 'coc-sh' ,
	\ 'coc-java' ,
	\ 'coc-html' ,
	\ 'coc-tsserver' ,
	\ ]


" }}}

" NVIM SCRIPTS ---------------------------------------------------------------- {{{


" Disabling stupid auto-commenting feature of neovim
augroup dis_autocommenting
    autocmd!
    autocmd FileType * setlocal formatoptions-=cro
augroup END

" Adding c-fam specific functions to highlighting function group
augroup c_formatting
	autocmd!
	autocmd FileType c,cpp syn keyword cFunctions printf scanf
	autocmd FileType c,cpp hi link cFunctions Function
augroup END


" }}}
