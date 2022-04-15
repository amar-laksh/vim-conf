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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Experience Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'metakirby5/codi.vim' " Python repl in buffer
Plug 'alpertuna/vim-header' " Adds header to files
Plug 'scrooloose/nerdcommenter' "Comment god
Plug 'SirVer/ultisnips' "Snippets engine
Plug 'honza/vim-snippets' " Snippets list

Plug 'machakann/vim-sandwich' " perform operations between pairs of symbols
Plug 'rstacruz/vim-closer' "Brackets god
"Plug 'prabirshrestha/async.vim'
Plug 'terryma/vim-multiple-cursors' " yep
Plug 'epheien/termdbg'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'plasticboy/vim-markdown'
" Plug 'shime/vim-livedown'
Plug 'lervag/vimtex' "Latex support
Plug 'KabbAmine/zeavim.vim' "Zeal support
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go support

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Language parsing and syntax highlighting
Plug 'thiagoalessio/rainbow_levels.vim' "Toggle scope level coloring
" Plug 'romgrk/nvim-treesitter-context' "Show context in file
" Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter-refactor' " Scope highlighting
Plug 'wellle/context.vim' " Context bar on top


" Plug 'racer-rust/vim-racer'
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


"
" Functional stuff
" Haskell
Plug 'neovimhaskell/haskell-vim'
" Plug 'haskell/stylish-haskell'
Plug 'sebmaynard/vim-ligatures'
" Plug 'alx741/vim-hindent'
Plug 'whonore/Coqtail'

" Plug 'dstein64/vim-startuptime'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fun Stuff Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'TheSovietStorm/vim-radio'
" Plug 'ryot4/diary.vim'
" Plug 'nightsense/night-and-day'
" Plug 'ActivityWatch/aw-watcher-vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eye Candy Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes
Plug 'altercation/vim-colors-solarized'
"Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'homembaixinho/p5.vim'

call plug#end()

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
" => INCLUDE FILETYPE SETUPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source  ~/.vim-conf/ftypes.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BASIC CONFIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set hidden
set exrc
set secure
filetype plugin indent on
set encoding=UTF-8
set list listchars=tab:→\ ,nbsp:‡,trail:•,extends:>,precedes:<
set showbreak=\\ " [bonus]
set hlsearch
set spell spelllang=en_gb
set cursorline
set mouse=a
set autoread
set number relativenumber
" au CursorHold * checktime

set background=light
let g:solarized_termcolors=256
" let g:solarized_termtrans=1
colorscheme solarized
" set termguicolors

" Permanent Undo
set undodir=~/.vimdid
set undofile

set tabstop=4
set shiftwidth=4
set expandtab

" let g:python3_host_prog='C:\Users\AmarLakshya\AppData\Local\Programs\Python\Python310\python.exe'
"
"
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  },

  refactor = {
    highlight_current_scope = { enable = true },
  },
}
EOF
