" File              : maps.vim
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 01.04.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@xaviers.edu.in>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CUSTOM MAPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-l> :ls<CR>
nnoremap <C-b> :bp<CR>
nnoremap <C-f> :bn<CR>
nnoremap <C-g> :e#<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lines Manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><M-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><M-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :Git<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :AddHeader<CR>
nnoremap <F5> :Codi<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :call ToggleQuickfixList()<CR>
