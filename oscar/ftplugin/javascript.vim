setlocal textwidth=120

nnoremap <buffer> <silent> <Leader>rni :call oscar#js#RequireToImport()<CR>
nnoremap <buffer> <silent> <Leader>rno :call oscar#js#OrganizeImports()<CR>
nnoremap <buffer> <silent> <Leader>rntc :call oscar#js#TypeConnect()<CR>

nnoremap <buffer> <silent> <Leader>cntf :call js#NewTestFile('ntf')<CR>
