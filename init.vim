call plug#begin('/Users/tranthien/.config/nvim/plugged')

"{{ Theme }}
    Plug 'joshdick/onedark.vim'					" Theme

"{{ File browser }}
    Plug 'preservim/nerdtree'					" File browser
    Plug 'Xuyuanp/nerdtree-git-plugin'				" Git status
    Plug 'ryanoasis/vim-devicons'				" Icon
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'PhilRunninger/nerdtree-buffer-ops'

"{{ File search }}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

"{{ Status bar }}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

"{{ Terminal }}
"   Plug 'voldikss/vim-floaterm'

"{{ Auto completed code }}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-endwise'          " Autocomplete end after a do

"{{ Code syntax highlight }}
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'leafgarland/typescript-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'tpope/vim-fugitive'
    Plug 'yuezk/vim-js'
    Plug 'mxw/vim-jsx'
"{{ Code syntax highlight }}
    Plug 'APZelos/blamer.nvim'

"{{ Code syntax highlight }}
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

"{{ vim google }}
    Plug 'szw/vim-g'

"{{ Vim git }}
    Plug 'airblade/vim-gitgutter'

"{{ Search all }}
"    Plug 'dyng/ctrlsf.vim'
"{{ Golang snipper }}
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

"{{ Start }}
set number
set numberwidth=4
set ruler
"set mouse=a

" Indentation
set autoindent
set cindent
set smartindent

" Delete empty space from the end of lines on every save
autocmd BufWritePre * :%s/\s\+$//e

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set nohlsearch " Don't highlight search term
set incsearch  " Jumping search

set laststatus=2

set clipboard=unnamed

au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md.erb setlocal spell
au BufRead,BufNewFile *.feature setlocal spell

set backspace=indent,eol,start

" Easier movement between split windows CTRL + {h, j, k, l}
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
""""""""""""""""""""""""""""""'
" => Theme
"""""""""""""""""""""""""""""""
" Color
syntax on
colorscheme onedark
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git -o -name .build \) -prune -o -print'

" Extended settings
let nvim_settings_dir = '/Users/tranthien/.config/nvim/settings/'
execute 'source'.nvim_settings_dir.'nerdtree.vim'
execute 'source'.nvim_settings_dir.'fzf.vim'
execute 'source'.nvim_settings_dir.'coc.vim'
execute 'source'.nvim_settings_dir.'blamer.vim'
execute 'source'.nvim_settings_dir.'airline.vim'
" execute 'source'.nvim_settings_dir.'floaterm.vim'
execute 'source'.nvim_settings_dir.'vimjavascript.vim'
execute 'source'.nvim_settings_dir.'typescriptvim.vim'
execute 'source'.nvim_settings_dir.'git.vim'
execute 'source'.nvim_settings_dir.'vim-go.vim'
" Define tab
function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

call UseTabs()
call UseSpaces()

