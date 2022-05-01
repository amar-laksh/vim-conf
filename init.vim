" File              : init.vim
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 22.07.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@protonmail.com>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'karb94/neoscroll.nvim'
Plug 'rrethy/vim-illuminate'
Plug 'Xuyuanp/scrollbar.nvim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Experience Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'metakirby5/codi.vim' " Python repl in buffer
Plug 'alpertuna/vim-header' " Adds header to files
Plug 'scrooloose/nerdcommenter' "Comment god
Plug 'jiangmiao/auto-pairs' "pairs god
Plug 'SirVer/ultisnips' "Snippets engine
Plug 'honza/vim-snippets' " Snippets list
Plug 'chentau/marks.nvim' " better marks support

Plug 'machakann/vim-sandwich' " perform operations between pairs of symbols
Plug 'terryma/vim-multiple-cursors' " yep
Plug 'epheien/termdbg' "Terminal debugging
Plug 'neoclide/coc.nvim', {'branch': 'release'} "main lsp engine
Plug 'jeetsukumaran/vim-indentwise' " Moving across indent blocks
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Language parsing and syntax highlighting
Plug 'thiagoalessio/rainbow_levels.vim' "Toggle scope level coloring
Plug 'nvim-treesitter/nvim-treesitter-refactor' " Scope highlighting
Plug 'wellle/context.vim' " Context bar on top

Plug 'plasticboy/vim-markdown' 
" Plug 'shime/vim-livedown'
Plug 'lervag/vimtex' "Latex support
Plug 'KabbAmine/zeavim.vim' "Zeal support
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go support

" Plug 'racer-rust/vim-racer' "Rust support
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 's1n7ax/nvim-terminal'

"
" Functional stuff
" Haskell
Plug 'neovimhaskell/haskell-vim'
" Plug 'haskell/stylish-haskell'
" Plug 'alx741/vim-hindent'
Plug 'whonore/Coqtail'
" Plug 'dstein64/vim-startuptime'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'homembaixinho/p5.vim'
Plug 'lewis6991/spellsitter.nvim' "spellcheck using treesitter
Plug 'stevearc/aerial.nvim'

" Plug 'rrethy/vim-illuminate'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fun Stuff Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nightsense/night-and-day'
" Plug 'ActivityWatch/aw-watcher-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eye Candy Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes
Plug 'overcache/NeoSolarized'
Plug 'sainnhe/gruvbox-material'
"Icons
Plug 'sebmaynard/vim-ligatures'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

if has('unix')
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => INCLUDE PLUGINS
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source  ~/.vim-conf/plugins.vim

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => INCLUDE MAPPINGS
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source  ~/.vim-conf/maps.vim

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => INCLUDE MACROS
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source  ~/.vim-conf/macros.vim

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => INCLUDE CUSTOM FUNCTIONS
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source  ~/.vim-conf/functions.vim

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => INCLUDE FILE TYPE SETUPS
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source  ~/.vim-conf/ftypes.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Same includes but for windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has ('win64')
    source  ~\AppData\Local\nvim\plugins.vim

    source  ~\AppData\Local\nvim\maps.vim

    source  ~\AppData\Local\nvim\macros.vim

    source  ~\AppData\Local\nvim\functions.vim

    source  ~\AppData\Local\nvim\ftypes.vim
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BASIC CONFIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spell
syntax on
set hidden
set exrc
set secure
filetype plugin indent on
set encoding=UTF-8
set list listchars=tab:→\ ,nbsp:‡,trail:•,extends:>,precedes:<
set showbreak=\\ " [bonus]
set hlsearch
" set spell spelllang=en_gb
set cursorline
set mouse=a
set autoread
set number relativenumber

set background=light
" let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme gruvbox-material
let g:gruvbox_material_background = 'soft'
let g:airline_theme = 'gruvbox_material'
set termguicolors

" Permanent Undo
set undodir=~/.vimdid
set undofile

set tabstop=4
set shiftwidth=4
set expandtab

if has('win32') || has('win64')
    let g:python3_host_prog='~\AppData\Local\Programs\Python\Python310\python.exe'
endif
