"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


au FileType qf call AdjustWindowHeight(10, 50)
function! AdjustWindowHeight(minheight, maxheight)
	exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

function! ToggleQuickfixList()
	for bufnum in map(filter(split(s:GetBufferList(), '\n'), 'v:val =~ "Quickfix List"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
		if bufwinnr(bufnum) != -1
			cclose
			return
		endif
	endfor
	let winnr = winnr()
	if exists("g:toggle_list_copen_command")
		exec(g:toggle_list_copen_command)
	else
		copen
	endif
	if winnr() != winnr
		wincmd p
	endif
endfunction

if !exists("g:toggle_list_no_mappings")
	nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
	nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coq functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! AllCoq()
    if(&ft=='coq')
        :let lines=line('$')
        :execute lines"CoqNext"
        :echom "sending:"lines"lines to Coq"
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Automatic C/C++ header file guards
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:insert_header()
  let filename = expand("%:t")
  execute "normal! i/* "
  execute "normal! o" . filename
  execute "normal! o"
  execute "normal! oTODO: Description "
  execute "normal! o"
  execute "normal! o/"
  normal! o
  normal! o
endfunction
autocmd BufNewFile *.{h,c,hpp,cpp} call <SID>insert_header()

" Automatic C / C++ header guards
function! s:insert_gates()
  let gatename = "__" . substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . " "
  normal! o
  execute "normal! Go#endif /* " . gatename . " */"
  normal! k
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

" Automatic header file inclusion (foo.c includes foo.h)
function! s:insert_header_incl()
  let filename = expand("%:t")
  execute "normal! i#include " . "\"" . substitute(filename, "\\.c", "\\.h", "g") . "\""
  normal! o
endfunction
autocmd BufNewFile *.{c,cpp} call <SID>insert_header_incl()
