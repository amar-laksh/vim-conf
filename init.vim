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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

Plug 'metakirby5/codi.vim'
Plug 'alpertuna/vim-header'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'machakann/vim-sandwich'
Plug 'rstacruz/vim-closer'
Plug 'prabirshrestha/async.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'vim-syntastic/syntastic'

Plug 'ervandew/supertab'
Plug 'plasticboy/vim-markdown'
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'
Plug 'KabbAmine/zeavim.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'racer-rust/vim-racer'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fun Stuff Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'TheSovietStorm/vim-radio'
" Plug 'ryot4/diary.vim'
" Plug 'ActivityWatch/aw-watcher-vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eye Candy Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes
Plug 'arzg/vim-corvine'
" Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
"Icons
Plug 'ryanoasis/vim-devicons'
call plug#end()
