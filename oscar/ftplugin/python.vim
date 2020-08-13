setlocal textwidth=120

nnoremap <buffer> <silent> <Leader>rpb :call oscar#python#BuildDeps()<CR>
nnoremap <buffer> <silent> <Leader>rpa :call oscar#python#BuildDepsAll()<CR>
nnoremap <buffer> <silent> <Leader>rpt :call oscar#python#TargetGen()<CR>
nnoremap <buffer> <silent> <Leader>rpp :call oscar#python#MakePants()<CR>

nnoremap <buffer> <silent> <Leader>ru :call python#RunTestFile('--updateSnapshot')<CR>
