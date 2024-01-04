function! s:check_ultisnips() abort
	if match(&runtimepath, 'ultisnips') != -1
		call v:lua.vim.health.ok('UltiSnips is installed')
	else
		call v:lua.vim.health.error('UltiSnips is not installed')
	endif	
endfunction

function! s:check_scvim_or_scnvim() abort
	if match(&runtimepath, 'scnvim') != -1
		call v:lua.vim.health.ok('scnvim is installed')
	elseif	match(&runtimepath, 'scvim') != -1
		call v:lua.vim.health.ok('scvim is installed')
	else
		call v:lua.vim.health.error('No SuperCollider plugin is installed. Consider installed scnvim or scvim')
	endif
endfunction

function! health#vim_supercollider_snippets#check() abort
	call v:lua.vim.health.start('vim-supercollider-snippets')
	call s:check_ultisnips()
	call s:check_scvim_or_scnvim()
endfunction
