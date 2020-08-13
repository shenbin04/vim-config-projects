function! oscar#util#GenAll()
  call oscar#python#GenThrift()
  call oscar#python#GenProtobuf()
  call oscar#js#GenProtobuf()
endfunction

function! oscar#util#OpenBuildFile()
  let file = findfile('BUILD', '.;')
  call util#TryOpenFile(file)
endfunction
