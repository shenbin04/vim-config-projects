function! oscar#util#GenAll()
  call oscar#python#GenThrift()
  call oscar#python#GenProtobuf()
  call oscar#js#GenProtobuf()
endfunction
