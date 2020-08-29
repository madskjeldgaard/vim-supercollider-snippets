let g:scsnip_root_dir = expand('<sfile>:h:h')

" augroup scsnip
" 	autocmd!
" augroup END

fun! s:editscsnippets()
	execute 'tabnew ' . g:scsnip_root_dir . '/UltiSnips/supercollider.snippets'
endfun

command! EditSCSnippets call s:editscsnippets()

fun! s:editschelpsnippets()
	execute 'tabnew ' . g:scsnip_root_dir . '/UltiSnips/scdoc.snippets'
endfun

command! EditSCHelpSnippets call s:editschelpsnippets()
