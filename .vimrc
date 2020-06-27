" File              : .vimrc
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 31.03.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@xaviers.edu.in>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE INIT CONFIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/init.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/maps.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE MACROS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/macros.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE CUSTOM FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/functions.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => INCLUDE FILETYPE SETUPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim-conf/ftypes.vim

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
au CursorHold * checktime

set background=light
let g:solarized_termcolors=256
colorscheme solarized
set termguicolors


