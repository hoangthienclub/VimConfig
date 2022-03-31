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
    Plug 'voldikss/vim-floaterm'

"{{ Auto completed code }}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'mattn/emmet-vim'
    Plug 'voldikss/vim-floaterm'

"{{ Code syntax highlight }}
    Plug 'yuezk/vim-js'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'leafgarland/typescript-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'tpope/vim-fugitive'
    Plug 'yuezk/vim-js'

"{{ Code syntax highlight }}
    Plug 'APZelos/blamer.nvim'

call plug#end()

"{{ Start }}
set number

""""""""""""""""""""""""""""""'
" => Theme
"""""""""""""""""""""""""""""""
" Color
syntax on
colorscheme onedark


" Extended settings
let nvim_settings_dir = '/Users/tranthien/.config/nvim/settings/'
execute 'source'.nvim_settings_dir.'nerdtree.vim'
execute 'source'.nvim_settings_dir.'fzf.vim'
execute 'source'.nvim_settings_dir.'coc.vim'
execute 'source'.nvim_settings_dir.'blamer.vim'
execute 'source'.nvim_settings_dir.'airline.vim'
execute 'source'.nvim_settings_dir.'floaterm.vim'
